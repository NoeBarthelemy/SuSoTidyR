#' Importer et structurer les métadonnées de Survey Solutions / Import and Tidy Survey Solutions Metadata
#'
#' @description
#' **Français :** Cette fonction importe les métadonnées provenant des données exportées par Survey Solutions,
#' organise les labels de variables et de valeurs dans un format *tidy*, et remplace éventuellement
#' les labels existants par ceux provenant de fichiers de catégories supplémentaires, si disponibles.
#' Elle inclut un module de détection d'encodage pour garantir la compatibilité des caractères spéciaux.
#' De plus, elle établit les relations hiérarchiques entre les variables en utilisant la structure du questionnaire
#' définie dans le fichier `document.json`, permettant ainsi de lier les variables enfants à leurs variables parentes.
#'
#' **English:** This function imports metadata from Survey Solutions exported data, organizes
#' variable and value labels in a tidy format, and optionally replaces existing labels with those from
#' additional category files if available. It includes an encoding detection module to ensure compatibility with special characters.
#' Additionally, it establishes hierarchical relationships between variables using the questionnaire structure
#' defined in the `document.json` file, enabling the linking of child variables to their parent variables.
#'
#' @param dossier
#' **Français :** Un caractère spécifiant le chemin vers le dossier contenant les fichiers `.do`
#' exportés depuis Survey Solutions, ainsi que des fichiers supplémentaires optionnels dans
#' `Questionnaire/content.zip`.
#'
#' **English:** A character string specifying the path to the folder containing `.do` files
#' exported from Survey Solutions and optional additional files in the `Questionnaire/content.zip`.
#'
#' @return
#' **Français :** Un data frame structuré (*tidy*) contenant les métadonnées, incluant les noms de variables,
#' leurs labels, les labels associés aux valeurs, et les relations hiérarchiques entre variables via la colonne `parent_variable`.
#'
#' **English:** A tidy data frame with metadata, including variable names, labels, associated value labels,
#' and hierarchical relationships between variables through the `parent_variable` column.
#'
#' @details
#' **Français :** La fonction traite les fichiers `.do` dans le dossier spécifié pour extraire les labels de
#' variables et de valeurs. Elle recherche également un fichier `content.zip` dans le sous-dossier
#' `Questionnaire` pour remplacer les labels par ceux des fichiers de catégories s'ils correspondent
#' aux labels de variables exportés. Un module de détection et de conversion d'encodage a été ajouté pour
#' lire les fichiers `.do` avec l'encodage détecté et les convertir en UTF-8, garantissant ainsi une bonne gestion
#' des caractères spéciaux.
#'
#' En outre, la fonction établit les liens entre les variables enfants et leurs variables parentes en utilisant le fichier `document.json`
#' contenu dans `content.zip`. Elle extrait la structure hiérarchique du questionnaire, y compris les relations définies par `CascadeFromQuestionId`
#' et `PublicKey`. La fonction est capable de parcourir des structures JSON complexes, y compris des data frames imbriqués,
#' pour extraire toutes les questions et leurs relations.
#'
#' **English:** The function processes `.do` files in the specified folder to extract variable and value labels.
#' It also looks for a `content.zip` file within the `Questionnaire` subfolder to replace labels with those
#' from category files if they match the exported variable labels. An encoding detection and conversion module
#' has been added to read `.do` files with the detected encoding and convert them to UTF-8, ensuring proper handling
#' of special characters.
#'
#' Additionally, the function establishes links between child variables and their parent variables using the `document.json` file
#' contained within `content.zip`. It extracts the hierarchical structure of the questionnaire, including relationships defined by `CascadeFromQuestionId`
#' and `PublicKey`. The function can traverse complex JSON structures, including nested data frames, to extract all questions and their relationships.
#'
#' @importFrom stringr str_match_all
#' @importFrom readxl read_excel
#' @importFrom readr guess_encoding
#' @importFrom jsonlite fromJSON
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
  if (!requireNamespace("readr", quietly = TRUE)) {
    stop("Le package 'readr' est requis mais n'est pas installé.")
  }
  if (!requireNamespace("readxl", quietly = TRUE)) {
    warning("Le package 'readxl' est requis mais n'est pas installé. Impossible de compléter les labels manquants depuis les catégories.")
    readxl_installed <- FALSE
  } else {
    readxl_installed <- TRUE
  }
  if (!requireNamespace("jsonlite", quietly = TRUE)) {
    warning("Le package 'jsonlite' est requis mais n'est pas installé. Impossible d'établir le lien entre les questions parentes et enfants.")
    jsonlite_installed <- FALSE
  } else {
    jsonlite_installed <- TRUE
  }

  # Fonction de lecture avec détection et conversion d'encodage
  read_file_with_encoding <- function(file_path) {
    # Détecter l'encodage
    detected_encoding <- tryCatch({
      enc <- readr::guess_encoding(file_path, n_max = 1000)$encoding[1]
      if (is.na(enc)) enc <- "UTF-8" # Utiliser UTF-8 par défaut si non détecté
      enc
    }, error = function(e) "UTF-8") # Utiliser UTF-8 en cas d'erreur

    # Lire le fichier avec l'encodage détecté
    content <- readLines(file_path, encoding = detected_encoding, warn = FALSE)
    # Convertir en UTF-8 si nécessaire
    content <- iconv(content, from = detected_encoding, to = "UTF-8")
    return(paste(content, collapse = "\n"))
  }

  # Lister tous les fichiers .do dans le dossier
  fichiers_do <- list.files(dossier, pattern = "\\.do$", full.names = TRUE)

  # Vérifier s'il y a des fichiers .do dans le dossier
  if (length(fichiers_do) == 0) {
    warning("Aucun fichier .do trouvé dans le dossier spécifié.")
    return(NULL)
  }

  # Lire tous les fichiers .do avec encodage détecté et stocker le contenu dans une liste
  contenus <- lapply(fichiers_do, function(fichier) {
    read_file_with_encoding(fichier)
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

  # Rassemblement des résultats dans un tableau 'tidy'
  value_labels_df <- do.call(rbind, value_labels_list)
  variable_labels_df <- do.call(rbind, variable_labels_list)
  variable_value_labels_df <- do.call(rbind, variable_value_labels_list)

  variable_with_values_df <- merge(variable_labels_df, variable_value_labels_df,
                                   by=c('chemin', 'fichier', 'variable_name'), all.y=TRUE)
  variable_with_values_df <- merge(variable_with_values_df, value_labels_df,
                                   by=c('chemin', 'fichier', 'label_name'), all.x=TRUE)

  variables_without_values <- setdiff(variable_labels_df$variable_name, variable_with_values_df$variable_name)
  variables_without_values_df <- variable_labels_df[variable_labels_df$variable_name %in% variables_without_values,]
  variables_without_values_df$value <- NA
  variables_without_values_df$value_label <- NA

  tidy_nomenclature <- rbind(
    variable_with_values_df[, c('chemin', 'fichier', 'variable_name', 'variable_label', 'value', 'value_label')],
    variables_without_values_df[, c('chemin', 'fichier', 'variable_name', 'variable_label', 'value', 'value_label')]
  )

  # --------------------------------------------------------------------
  # Nouvelle fonctionnalité : Compléter les labels manquants à partir des catégories
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

              # **Assurer que 'parentvalue' existe dans 'tidy_nomenclature'**
              if (!'parentvalue' %in% colnames(tidy_nomenclature)) {
                tidy_nomenclature$parentvalue <- NA
              }

              # **Réordonner les colonnes de 'df_ajoutes' pour correspondre à 'tidy_nomenclature'**
              df_ajoutes <- df_ajoutes[, colnames(tidy_nomenclature)]

              # Ajouter au tidy_nomenclature
              tidy_nomenclature <- rbind(tidy_nomenclature, df_ajoutes)

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

  # --------------------------------------------------------------------
  # Ajout de la colonne 'parent_variable' en utilisant 'document.json'
  # --------------------------------------------------------------------

  # Vérifier si 'parentvalue' contient des valeurs non-NA
  if (any(!is.na(tidy_nomenclature$parentvalue))) {
    # Chemin vers 'content.zip' dans le dossier 'Questionnaire'
    content_zip_path <- file.path(dossier, "Questionnaire", "content.zip")

    if (!file.exists(content_zip_path)) {
      warning(sprintf(
        "Nous avons détecté que votre questionnaire utilise des catégories et des sous-catégories, mais le fichier content.zip, qui contient la structure du questionnaire, n'a pas été trouvé dans le répertoire %s/Questionnaire/. Cela empêche cette fonction d'établir le lien entre les catégories parentes et les catégories enfants. Veuillez corriger cela.",
        dossier
      ))
    } else {
      # Extraire 'document.json' du 'content.zip'
      temp_dir <- tempdir()
      unzip(content_zip_path, files = "document.json", exdir = temp_dir)

      document_json_path <- file.path(temp_dir, "document.json")

      if (!file.exists(document_json_path)) {
        warning("Le fichier 'document.json' n'a pas été trouvé dans 'content.zip'.")
      } else if (jsonlite_installed) {
        # Charger 'document.json' sans 'flatten = TRUE' pour préserver la structure hiérarchique
        document <- jsonlite::fromJSON(document_json_path, flatten = FALSE)

        # Déterminer où les questions sont stockées
        if (!is.null(document$Children)) {
          document_children <- document$Children
          print("Utilisation de 'document$Children'")
        } else if (!is.null(document$Questionnaire$Children)) {
          document_children <- document$Questionnaire$Children
          print("Utilisation de 'document$Questionnaire$Children'")
        } else {
          stop("Impossible de trouver 'Children' dans 'document.json'")
        }

        # Fonction récursive pour extraire les questions
        extract_questions <- function(questions_list) {
          result <- data.frame(
            VariableName = character(),
            PublicKey = character(),
            CascadeFromQuestionId = character(),
            stringsAsFactors = FALSE
          )

          # Si 'questions_list' est un data frame
          if (is.data.frame(questions_list)) {
            for (i in seq_len(nrow(questions_list))) {
              q <- questions_list[i, ]
              # Traiter chaque question ou groupe
              if (!is.null(q$`$type`)) {
                if (q$`$type` == "Group") {
                  # Si c'est un groupe, parcourir récursivement ses enfants
                  if (!is.null(q$Children[[1]])) {
                    result <- rbind(result, extract_questions(q$Children[[1]]))
                  }
                } else {
                  # Sinon, c'est une question
                  VariableName <- ifelse(is.null(q$VariableName), NA, q$VariableName)
                  PublicKey <- ifelse(is.null(q$PublicKey), NA, q$PublicKey)
                  CascadeFromQuestionId <- ifelse(is.null(q$CascadeFromQuestionId), NA, q$CascadeFromQuestionId)
                  result <- rbind(result, data.frame(
                    VariableName = VariableName,
                    PublicKey = PublicKey,
                    CascadeFromQuestionId = CascadeFromQuestionId,
                    stringsAsFactors = FALSE
                  ))
                }
              }
            }
          } else if (is.list(questions_list)) {
            # Si 'questions_list' est une liste
            for (q in questions_list) {
              # Vérifier que 'q' est une liste ou un data frame
              if (is.list(q) || is.data.frame(q)) {
                result <- rbind(result, extract_questions(q))
              }
            }
          }
          return(result)
        }

        # Extraire les questions en commençant par 'document_children'
        if (!is.null(document_children) && length(document_children) > 0) {
          questions_df <- extract_questions(document_children)

          # Après l'extraction de questions_df
          print("Contenu de questions_df :")
          print(questions_df)

          # Supprimer les lignes où 'VariableName' est NA
          questions_df <- questions_df[!is.na(questions_df$VariableName), ]

          # Afficher les VariableName extraits
          print("VariableName extraits :")
          print(unique(questions_df$VariableName))

          # Supprimer les espaces blancs et uniformiser la casse
          questions_df$VariableName <- trimws(questions_df$VariableName)
          questions_df$PublicKey <- trimws(tolower(questions_df$PublicKey))
          questions_df$CascadeFromQuestionId <- trimws(tolower(questions_df$CascadeFromQuestionId))

          # Créer le mapping entre 'PublicKey' et 'VariableName'
          key_to_varname <- setNames(questions_df$VariableName, questions_df$PublicKey)
          names(key_to_varname) <- tolower(names(key_to_varname))

          print("Mapping PublicKey vers VariableName :")
          print(key_to_varname)

          # Ajouter la colonne 'parent_variable' à 'tidy_nomenclature'
          tidy_nomenclature$parent_variable <- NA

          # Variables avec 'parentvalue' non-NA
          variables_with_parentvalue <- unique(tidy_nomenclature$variable_name[!is.na(tidy_nomenclature$parentvalue)])
          # Supprimer les espaces blancs
          variables_with_parentvalue <- trimws(variables_with_parentvalue)

          print("Variables avec parentvalue non-NA :")
          print(variables_with_parentvalue)

          # Boucle de correspondance avec débogage
          for (var in variables_with_parentvalue) {
  print(sprintf("Traitement de la variable : %s", var))

  # PATCH DU 11/05/2025
  question_row <- questions_df[trimws(questions_df$VariableName) == var, ]
  if (nrow(question_row) > 0) {

    cfi <- question_row$CascadeFromQuestionId
    print(sprintf("CascadeFromQuestionId pour %s : %s", var, cfi))

    ## ---------- PATCH anti-NA / clé absente -------------------------
    if (is.na(cfi) || !cfi %in% names(key_to_varname)) {
      warning(sprintf(
        "CascadeFromQuestionId manquant ou introuvable pour '%s' – parent_variable laissé vide.",
        var
      ))
      next             # on passe au var suivant
    }
    ## ----------------------------------------------------------------

    parent_var <- key_to_varname[[cfi]]
    tidy_nomenclature$parent_variable[tidy_nomenclature$variable_name == var] <- parent_var
    cat(sprintf("Variable : %s, Parent : %s\n", var, parent_var))

  } else {
    cat(sprintf("Variable %s non trouvée dans questions_df\n", var))
  }
}
        } else {
          warning("Le document JSON ne contient pas de questions sous 'Children'.")
        }
      }
    }
  }

  # Retourner le tableau 'tidy_nomenclature' mis à jour
  return(tidy_nomenclature)
}
