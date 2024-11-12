#' Importer les résultats d'enquête de Survey Solutions / Import Survey Solutions Survey Results
#'
#' @description
#' **Français :** Cette fonction importe les résultats d'enquête exportés depuis Survey Solutions.
#' Elle charge les fichiers de données principaux, ainsi que les fichiers de données associés
#' (rosters, assignments, interviews) si spécifié, et crée des data frames dans l'environnement global.
#'
#' **English :** This function imports survey results exported from Survey Solutions. It loads
#' main survey data files, as well as associated data files (rosters, assignments, interviews) if specified,
#' creating data frames in the global environment.
#'
#' @param Variable_Questionnaire
#' **Français :** Nom de la variable du questionnaire (ex. "ESS2024").
#' **English :** Name of the questionnaire variable (e.g., "ESS2024").
#'
#' @param import_Rosters
#' **Français :** Si TRUE, importe tous les rosters (par défaut TRUE).
#' **English :** If TRUE, imports all rosters (default TRUE).
#'
#' @param import_AssignmentsValues
#' **Français :** Si TRUE, importe `assignment__actions.tab` (par défaut FALSE).
#' **English :** If TRUE, imports `assignment__actions.tab` (default FALSE).
#'
#' @param import_InterviewsValues
#' **Français :** Si TRUE, importe les fichiers `interview__*.tab` (par défaut FALSE).
#' **English :** If TRUE, imports `interview__*.tab` files (default FALSE).
#'
#' @param results_folder
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
#' chargées sous forme de data frames dans l'environnement global.
#'
#' **English :** The function imports the main questionnaire file specified, then imports associated files
#' (rosters, assignments, interviews) based on the parameters. Data is loaded as data frames in the global environment.
#'
#' @examples
#' \dontrun{
#' # Exemple en français :
#' import_results("ESS2024", import_Rosters = TRUE, import_AssignmentsValues = TRUE)
#'
#' # English example:
#' import_results("ESS2024", import_Rosters = TRUE, import_AssignmentsValues = TRUE)
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

  # Initialiser des listes pour suivre les fichiers importés et non importés
  fichiers_importes <- list()
  fichiers_non_importes <- list()

  # Importer le fichier principal du questionnaire
  fichier_questionnaire <- file.path(dossier_resultats, paste0(Variable_Questionnaire, ".tab"))
  if (file.exists(fichier_questionnaire)) {
    df <- tryCatch({
      read.delim(fichier_questionnaire, stringsAsFactors = FALSE)
    }, error = function(e) {
      warning(paste("Erreur lors de l'importation du fichier", fichier_questionnaire, ":", e$message))
      NULL
    })
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
      nom_variable <- paste0(Variable_Questionnaire, "_", tools::file_path_sans_ext(nom_fichier))
      df <- tryCatch({
        read.delim(fichier, stringsAsFactors = FALSE)
      }, error = function(e) {
        warning(paste("Erreur lors de l'importation du fichier", fichier, ":", e$message))
        NULL
      })
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
      df <- tryCatch({
        read.delim(fichier_assignment, stringsAsFactors = FALSE)
      }, error = function(e) {
        warning(paste("Erreur lors de l'importation du fichier", fichier_assignment, ":", e$message))
        NULL
      })
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
        df <- tryCatch({
          read.delim(fichier_chemin, stringsAsFactors = FALSE)
        }, error = function(e) {
          warning(paste("Erreur lors de l'importation du fichier", fichier_chemin, ":", e$message))
          NULL
        })
        if (!is.null(df)) {
          nom_variable <- paste0(Variable_Questionnaire, "_", tools::file_path_sans_ext(fichier_nom))
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
