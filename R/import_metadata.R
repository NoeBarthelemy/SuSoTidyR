#' Importer et structurer les métadonnées de Survey Solutions / Import and Tidy Survey Solutions Metadata
#'
#' @description
#' **Français :** Cette fonction importe les métadonnées provenant des données exportées par Survey Solutions,
#' organise les labels de variables et de valeurs dans un format tidy, et remplace éventuellement
#' les labels existants par ceux provenant de fichiers de catégories supplémentaires, si disponibles.
#'
#' **English :** This function imports metadata from Survey Solutions exported data, organizes
#' variable and value labels in a tidy format, and optionally replaces existing labels with those from
#' additional category files if available.
#'
#' @param dossier
#' **Français :** Un caractère spécifiant le chemin vers le dossier contenant les fichiers `.do`
#' exportés depuis Survey Solutions, ainsi que des fichiers supplémentaires optionnels dans
#' `Questionnaire/content.zip`.
#' **English :** A character string specifying the path to the folder containing `.do` files
#' exported from Survey Solutions and optional additional files in the `Questionnaire/content.zip`.
#'
#' @return
#' **Français :** Un data frame structuré (tidy) contenant les métadonnées, incluant les noms de variables,
#' leurs labels, ainsi que les labels associés aux valeurs.
#' **English :** A tidy data frame with metadata, including variable names, labels, and associated value labels.
#'
#' @details
#' **Français :** La fonction traite les fichiers `.do` dans le dossier spécifié pour extraire les labels de
#' variables et de valeurs. Elle recherche également un fichier `content.zip` dans le sous-dossier
#' `Questionnaire` pour remplacer les labels par ceux des fichiers de catégories s'ils correspondent
#' aux labels de variables exportés.
#' **English :** The function processes `.do` files in the specified folder to extract variable and value labels.
#' It also looks for a `content.zip` file within the `Questionnaire` subfolder to replace labels with those
#' from category files if they match the exported variable labels.
#'
#' @importFrom stringr str_match_all
#' @importFrom readxl read_excel
#'
#' @examples
#' \dontrun{
#' # Exemples d'utilisation / Example usage:
#' metadata <- import_metadata("chemin/vers/dossier/donnees")
#' head(metadata)
#' }
#'
#' @export
import_metadata <- function(dossier) {
  # Afficher un message au lancement
  message("Démarrage de l'importation des nomenclatures... Cela peut prendre quelques minutes.")

  # Vérifier si le dossier existe
  if (!dir.exists(dossier)) {
    stop("Le dossier spécifié n'existe pas.")
  }

  # Charger les bibliothèques nécessaires
  if (!requireNamespace("stringr", quietly = TRUE)) {
    stop("Le package 'stringr' est requis mais n'est pas installé.")
  }
  if (!requireNamespace("readxl", quietly = TRUE)) {
    warning("Le package 'readxl' est requis mais n'est pas installé. Impossible de compléter les labels manquants depuis les catégories.")
    readxl_installed <- FALSE
  } else {
    readxl_installed <- TRUE
  }

  # Lister tous les fichiers .do dans le dossier
  fichiers_do <- list.files(dossier, pattern = "\\.do$", full.names = TRUE)

  # Vérifier s'il y a des fichiers .do dans le dossier
  if (length(fichiers_do) == 0) {
    warning("Aucun fichier .do trouvé dans le dossier spécifié.")
    return(NULL)
  }

  # Lire tous les fichiers .do et stocker le contenu dans une liste
  contenus <- lapply(fichiers_do, function(fichier) {
    contenu <- readLines(fichier, warn = FALSE)
    paste(contenu, collapse = "\n")
  })
  names(contenus) <- fichiers_do

  # Initialiser les listes pour stocker les données temporairement
  value_labels_list <- list()
  variable_labels_list <- list()
  variable_value_labels_list <- list()

  # Parcours de chaque fichier .do dans la liste "contenus"
  for (i in seq_along(contenus)) {
    chemin <- names(contenus)[i]
    texte <- contenus[[i]]
    fichier <- basename(chemin)

    # Séparation du texte en lignes individuelles
    text_lines <- strsplit(texte, "\n")[[1]]

    # Parcourir les lignes et extraire les informations
    for (line in text_lines) {
      line <- trimws(line)
      if (startsWith(line, "label define")) {
        # Traitement des définitions de valeurs
        content <- sub("^label define\\s+", "", line)
        label_name <- sub("\\s+.*", "", content)
        content <- sub(paste0("^", label_name, "\\s+"), "", content)
        matches <- stringr::str_match_all(content, "(\\S+)\\s+`\"(.*?)\"'")
        if (length(matches[[1]]) > 0) {
          values <- matches[[1]][,2]
          labels <- matches[[1]][,3]
          df <- data.frame(chemin=chemin, fichier=fichier, label_name=label_name,
                           value=values, value_label=labels, stringsAsFactors=FALSE)
          value_labels_list[[length(value_labels_list) + 1]] <- df
        }
      } else if (startsWith(line, "label variable")) {
        # Traitement des étiquettes de variables
        content <- sub("^label variable\\s+", "", line)
        variable_name <- sub("\\s+`?\".*", "", content)
        variable_label <- sub(paste0("^", variable_name, "\\s+`?\"?"), "", content)
        variable_label <- sub("\"?'?$", "", variable_label)
        df <- data.frame(chemin=chemin, fichier=fichier, variable_name=variable_name,
                         variable_label=variable_label, stringsAsFactors=FALSE)
        variable_labels_list[[length(variable_labels_list) + 1]] <- df
      } else if (startsWith(line, "label values")) {
        # Association des variables avec leurs labels de valeur
        content <- sub("^label values\\s+", "", line)
        variable_name <- sub("\\s+.*", "", content)
        label_name <- sub(paste0("^", variable_name, "\\s+"), "", content)
        df <- data.frame(chemin=chemin, fichier=fichier, variable_name=variable_name,
                         label_name=label_name, stringsAsFactors=FALSE)
        variable_value_labels_list[[length(variable_value_labels_list) + 1]] <- df
      }
    }
  }

  # Combiner les listes en data frames
  value_labels_df <- do.call(rbind, value_labels_list)
  variable_labels_df <- do.call(rbind, variable_labels_list)
  variable_value_labels_df <- do.call(rbind, variable_value_labels_list)

  # Fusion des dataframes pour obtenir un tableau 'tidy'
  variable_with_values_df <- merge(variable_labels_df, variable_value_labels_df,
                                   by=c('chemin', 'fichier', 'variable_name'), all.y=TRUE)
  variable_with_values_df <- merge(variable_with_values_df, value_labels_df,
                                   by=c('chemin', 'fichier', 'label_name'), all.x=TRUE)

  # Pour les variables sans labels de valeur
  variables_without_values <- setdiff(variable_labels_df$variable_name,
                                      variable_with_values_df$variable_name)
  variables_without_values_df <- variable_labels_df[variable_labels_df$variable_name %in%
                                                      variables_without_values,]
  variables_without_values_df$value <- NA
  variables_without_values_df$value_label <- NA

  # Combinaison des deux dataframes
  tidy_nomenclature <- rbind(
    variable_with_values_df[, c('chemin', 'fichier', 'variable_name', 'variable_label', 'value', 'value_label')],
    variables_without_values_df[, c('chemin', 'fichier', 'variable_name', 'variable_label', 'value', 'value_label')]
  )

  # Ajouter la colonne 'parentvalue' à tidy_nomenclature si elle n'existe pas
  if (!'parentvalue' %in% colnames(tidy_nomenclature)) {
    tidy_nomenclature$parentvalue <- NA
  }

  # --------------------------------------------------------------------
  # Nouvelle fonctionnalité : Remplacer les labels existants par ceux des catégories
  # --------------------------------------------------------------------

  if (readxl_installed) {
    # Chemin vers 'content.zip' dans le dossier 'Questionnaire'
    content_zip_path <- file.path(dossier, "Questionnaire", "content.zip")

    if (file.exists(content_zip_path)) {
      # Créer un dossier temporaire pour extraire 'content.zip'
      temp_dir <- tempdir()
      unzip(content_zip_path, exdir = temp_dir)

      # Chemin vers le dossier 'Categories' extrait
      categories_dir <- file.path(temp_dir, "Categories")

      # Vérifier si le dossier 'Categories' existe
      if (dir.exists(categories_dir)) {
        # Lister tous les fichiers .xlsx dans le dossier 'Categories'
        fichiers_xlsx <- list.files(categories_dir, pattern = "\\.xlsx$", full.names = TRUE)

        # Lire tous les fichiers de catégories une fois
        categories_list <- lapply(fichiers_xlsx, readxl::read_excel)
        names(categories_list) <- fichiers_xlsx

        # Obtenir la liste des variables présentes dans tidy_nomenclature
        variable_names <- unique(tidy_nomenclature$variable_name)

        # Parcourir chaque variable
        for (var_name in variable_names) {
          # Obtenir les value_labels et fichiers existants pour cette variable
          labels_existants <- tidy_nomenclature$value_label[tidy_nomenclature$variable_name == var_name]
          fichiers_existants <- unique(tidy_nomenclature$fichier[tidy_nomenclature$variable_name == var_name])
          chemins_existants <- unique(tidy_nomenclature$chemin[tidy_nomenclature$variable_name == var_name])
          variable_label_existante <- unique(tidy_nomenclature$variable_label[tidy_nomenclature$variable_name == var_name])

          # Parcourir les fichiers de catégories pour trouver un match basé sur 'value_label' et 'text'
          for (fichier_xlsx in fichiers_xlsx) {
            categorie_df <- categories_list[[fichier_xlsx]]

            # Vérifier que le fichier contient les colonnes 'id' et 'text'
            if (!all(c('id', 'text') %in% colnames(categorie_df))) {
              next  # Passer au fichier suivant si les colonnes n'existent pas
            }

            # Renommer 'parentid' en 'parentvalue' s'il existe
            if ('parentid' %in% colnames(categorie_df)) {
              colnames(categorie_df)[colnames(categorie_df) == 'parentid'] <- 'parentvalue'
            } else {
              categorie_df$parentvalue <- NA
            }

            # Obtenir les 'text' du fichier de catégorie
            textes_categorie <- categorie_df$text

            # Vérifier si les 'labels_existants' sont présents dans 'text' de la catégorie
            correspondance_labels <- labels_existants %in% textes_categorie

            if (all(correspondance_labels)) {
              # Trouvé un fichier de catégorie correspondant

              # Supprimer les entrées existantes pour cette variable
              tidy_nomenclature <- tidy_nomenclature[tidy_nomenclature$variable_name != var_name, ]

              # Créer de nouvelles entrées pour cette variable à partir du fichier de catégorie
              df_ajoutes <- data.frame(
                chemin = chemins_existants[1],
                fichier = fichiers_existants[1],
                variable_name = var_name,
                variable_label = variable_label_existante,
                value = categorie_df$id,
                value_label = categorie_df$text,
                parentvalue = categorie_df$parentvalue,
                stringsAsFactors = FALSE
              )

              # Ajouter au tidy_nomenclature
              tidy_nomenclature <- rbind(tidy_nomenclature, df_ajoutes)

              # Afficher le message indiquant que la variable a été remplacée
              message(paste("Variable", var_name, "a été remplacée par les libellés de la catégorie."))
              # Afficher les libellés ajoutés pour cette variable
              labels_var <- df_ajoutes[, c('value', 'value_label', 'parentvalue')]
              print(labels_var)

              break  # Sortir de la boucle des fichiers de catégories pour cette variable
            }
          }  # Fin de la boucle sur les fichiers de catégories
        }  # Fin de la boucle sur les variables
      } else {
        warning("Le dossier 'Categories' n'existe pas dans 'content.zip'.")
      }
    } else {
      warning("Le fichier 'content.zip' n'existe pas dans le dossier 'Questionnaire'.")
    }
  }

  # Retourner le tableau 'tidy_nomenclature' mis à jour
  return(tidy_nomenclature)
}
