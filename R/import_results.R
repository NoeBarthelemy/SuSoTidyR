#' Importer les résultats d'enquête de Survey Solutions / Import Survey Solutions Survey Results
#'
#' @description
#' **Français :** Cette fonction importe les résultats d'enquête exportés depuis Survey Solutions.
#' Elle charge les fichiers de données principaux, ainsi que les fichiers de données associés
#' (rosters, assignments, interviews) si spécifié, et crée des data frames dans l'environnement global.
#' Un module de détection d'encodage est intégré pour assurer une lecture correcte des caractères spéciaux.
#'
#' **English :** This function imports survey results exported from Survey Solutions. It loads
#' main survey data files, as well as associated data files (rosters, assignments, interviews) if specified,
#' creating data frames in the global environment. An encoding detection module is included to ensure
#' correct reading of special characters.
#'
#' @param Variable_Questionnaire
#' **Français :** Nom de la variable du questionnaire (ex. "ESS2024").
#' **English :** Name of the questionnaire variable (e.g., "ESS2024").
#'
#' @param Importer_Rosters
#' **Français :** Si TRUE, importe tous les rosters (par défaut TRUE).
#' **English :** If TRUE, imports all rosters (default TRUE).
#'
#' @param Importer_AssignmentsValues
#' **Français :** Si TRUE, importe `assignment__actions.tab` (par défaut FALSE).
#' **English :** If TRUE, imports `assignment__actions.tab` (default FALSE).
#'
#' @param Importer_InterviewsValues
#' **Français :** Si TRUE, importe les fichiers `interview__*.tab` (par défaut FALSE).
#' **English :** If TRUE, imports `interview__*.tab` files (default FALSE).
#'
#' @param dossier_resultats
#' **Français :** Chemin vers le dossier contenant les fichiers `.tab` (par défaut ".").
#' **English :** Path to the folder containing `.tab` files (default ".").
#'
#' @return
#' **Français :** Cette fonction ne retourne rien, car les data frames sont directement assignés dans l'environnement global.
#' **English :** This function returns nothing, as data frames are directly assigned in the global environment.
#'
#' @details
#' **Français :** La fonction importe le fichier principal du questionnaire spécifié, puis importe
#' les fichiers associés (rosters, assignments, interviews) en fonction des paramètres. Les données sont
#' chargées sous forme de data frames dans l'environnement global. Un module de détection d'encodage
#' analyse chaque fichier pour détecter son encodage et convertir le contenu en UTF-8, garantissant ainsi
#' une bonne gestion des caractères spéciaux.
#'
#' **English :** The function imports the main questionnaire file specified, then imports associated files
#' (rosters, assignments, interviews) based on the parameters. Data is loaded as data frames in the global environment.
#' An encoding detection module analyzes each file to detect its encoding and converts the content to UTF-8,
#' ensuring proper handling of special characters.
#'
#' @examples
#' \dontrun{
#' # Exemple en français :
#' import_results("ESS2024", Importer_Rosters = TRUE, Importer_AssignmentsValues = TRUE)
#'
#' # English example:
#' import_results("ESS2024", Importer_Rosters = TRUE, Importer_AssignmentsValues = TRUE)
#' }
#'
#' @export
import_results <- function(Variable_Questionnaire,
                           Importer_Rosters = TRUE,
                           Importer_AssignmentsValues = FALSE,
                           Importer_InterviewsValues = FALSE,
                           dossier_resultats = ".") {
  # Variable_Questionnaire : Nom de la variable du questionnaire (par exemple, "ESS2024")
  # Importer_Rosters : Si TRUE, importe tous les rosters (défaut TRUE)
  # Importer_AssignmentsValues : Si TRUE, importe assignment__actions.tab (défaut FALSE)
  # Importer_InterviewsValues : Si TRUE, importe les fichiers interview__*.tab (défaut FALSE)
  # dossier_resultats : Chemin vers le dossier contenant les fichiers .tab (défaut ".")

  # Vérifier que le package 'readr' est installé
  if (!requireNamespace("readr", quietly = TRUE)) {
    stop("Le package 'readr' est requis mais n'est pas installé.")
  }

  # Charger 'readr' et 'tools'
  library(readr)
  library(tools)

  # Fonction de lecture avec détection d'encodage
  read_tab_with_encoding <- function(file_path) {
    detected_encoding <- tryCatch({
      enc <- readr::guess_encoding(file_path, n_max = 1000)$encoding[1]
      if (is.na(enc)) enc <- "UTF-8"
      enc
    }, error = function(e) "UTF-8")

    # Lire le fichier en utilisant read_tsv de readr
    tryCatch({
      readr::read_tsv(file_path, locale = readr::locale(encoding = detected_encoding), progress = FALSE, show_col_types = FALSE)
    }, error = function(e) {
      warning(paste("Erreur lors de l'importation du fichier", file_path, ":", e$message))
      NULL
    })
  }

  # Initialiser des listes pour suivre les fichiers importés et non importés
  fichiers_importes <- list()
  fichiers_non_importes <- list()

  # Importer le fichier principal du questionnaire
  fichier_questionnaire <- file.path(dossier_resultats, paste0(Variable_Questionnaire, ".tab"))
  if (file.exists(fichier_questionnaire)) {
    df <- read_tab_with_encoding(fichier_questionnaire)
    if (!is.null(df)) {
      assign(Variable_Questionnaire, df, envir = .GlobalEnv)
      fichiers_importes <- c(fichiers_importes, fichier_questionnaire)
    } else {
      fichiers_non_importes <- c(fichiers_non_importes, fichier_questionnaire)
    }
  } else {
    warning(paste("Le fichier", fichier_questionnaire, "n'existe pas."))
    fichiers_non_importes <- c(fichiers_non_importes, fichier_questionnaire)
  }

  # Importer les rosters si demandé
  nb_rosters_importes <- 0
  if (Importer_Rosters) {
    # Lister tous les fichiers .tab dans le dossier de résultats
    fichiers_tab <- list.files(dossier_resultats, pattern = "\\.tab$", full.names = TRUE)

    # Exclure les fichiers qui sont toujours présents
    fichiers_exclus <- c("assignment__actions.tab",
                         paste0(Variable_Questionnaire, ".tab"),
                         "interview__actions.tab",
                         "interview__comments.tab",
                         "interview__diagnostics.tab",
                         "interview__errors.tab")

    fichiers_rosters <- fichiers_tab[!basename(fichiers_tab) %in% fichiers_exclus]

    # Importer chaque fichier roster
    for (fichier in fichiers_rosters) {
      nom_fichier <- basename(fichier)
      nom_variable <- paste0(Variable_Questionnaire, "_", file_path_sans_ext(nom_fichier))
      df <- read_tab_with_encoding(fichier)
      if (!is.null(df)) {
        assign(nom_variable, df, envir = .GlobalEnv)
        fichiers_importes <- c(fichiers_importes, fichier)
        nb_rosters_importes <- nb_rosters_importes + 1
      } else {
        fichiers_non_importes <- c(fichiers_non_importes, fichier)
      }
    }
  }

  # Importer assignment__actions.tab si demandé
  if (Importer_AssignmentsValues) {
    fichier_assignment <- file.path(dossier_resultats, "assignment__actions.tab")
    if (file.exists(fichier_assignment)) {
      df <- read_tab_with_encoding(fichier_assignment)
      if (!is.null(df)) {
        nom_variable <- paste0(Variable_Questionnaire, "_assignment__actions")
        assign(nom_variable, df, envir = .GlobalEnv)
        fichiers_importes <- c(fichiers_importes, fichier_assignment)
      } else {
        fichiers_non_importes <- c(fichiers_non_importes, fichier_assignment)
      }
    } else {
      warning("Le fichier assignment__actions.tab n'existe pas.")
      fichiers_non_importes <- c(fichiers_non_importes, fichier_assignment)
    }
  }

  # Importer les fichiers interview__*.tab si demandé
  if (Importer_InterviewsValues) {
    fichiers_interview <- c("interview__actions.tab",
                            "interview__comments.tab",
                            "interview__diagnostics.tab",
                            "interview__errors.tab")
    for (fichier_nom in fichiers_interview) {
      fichier_chemin <- file.path(dossier_resultats, fichier_nom)
      if (file.exists(fichier_chemin)) {
        df <- read_tab_with_encoding(fichier_chemin)
        if (!is.null(df)) {
          nom_variable <- paste0(Variable_Questionnaire, "_", file_path_sans_ext(fichier_nom))
          assign(nom_variable, df, envir = .GlobalEnv)
          fichiers_importes <- c(fichiers_importes, fichier_chemin)
        } else {
          fichiers_non_importes <- c(fichiers_non_importes, fichier_chemin)
        }
      } else {
        warning(paste("Le fichier", fichier_nom, "n'existe pas."))
        fichiers_non_importes <- c(fichiers_non_importes, fichier_chemin)
      }
    }
  }

  # Afficher les messages en sortie
  cat("Importation terminée.\n")
  cat("Nombre de rosters importés :", nb_rosters_importes, "\n")
  if (length(fichiers_importes) > 0) {
    cat("Fichiers importés avec succès :\n")
    for (fichier in fichiers_importes) {
      cat("- ", fichier, "\n")
    }
  }
  if (length(fichiers_non_importes) > 0) {
    cat("Fichiers non importés ou avec erreurs :\n")
    for (fichier in fichiers_non_importes) {
      cat("- ", fichier, "\n")
    }
  } else {
    cat("Tous les fichiers ont été importés avec succès.\n")
  }

  # La fonction ne retourne rien, car les data frames sont directement assignés dans l'environnement global
  invisible(NULL)
}
