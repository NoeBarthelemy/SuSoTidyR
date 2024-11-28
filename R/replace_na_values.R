#' Remplacer les valeurs manquantes spécifiques par des NA / Replace Specific Missing Values with NA
#'
#' @description
#' **Français :** Cette fonction détecte et remplace les valeurs spécifiques de données manquantes
#' (`##N/A##` et `-999999999`) par des `NA` dans toutes les colonnes d'un jeu de données. Elle utilise
#' `dplyr` pour une application rapide et efficace, facilitant ainsi le traitement et l'analyse des données.
#'
#' **English :** This function detects and replaces specific missing values (`##N/A##` and `-999999999`)
#' with `NA` across all columns in a dataset. It leverages `dplyr` for fast and efficient application,
#' making data cleaning and analysis easier.
#'
#' @param data
#' **Français :** Le data frame contenant les valeurs à remplacer.
#' **English :** The data frame containing the values to replace.
#'
#' @return
#' **Français :** Un data frame avec les valeurs spécifiques de données manquantes remplacées par `NA`.
#' **English :** A data frame with specific missing values replaced by `NA`.
#'
#' @details
#' **Français :** Cette fonction utilise `mutate(across(everything(), ...))` pour appliquer les changements
#' à toutes les colonnes. Elle remplace chaque occurrence de `##N/A##` et `-999999999` par `NA`, ce qui permet
#' de standardiser les valeurs manquantes dans le jeu de données.
#'
#' **English :** This function uses `mutate(across(everything(), ...))` to apply changes across all columns.
#' It replaces each occurrence of `##N/A##` and `-999999999` with `NA`, allowing for standardized missing values
#' throughout the dataset.
#'
#' @examples
#' \dontrun{
#' # Exemple en français
#' ESS_2024_results_Naclean <- ESS_2024_results_cleanlists %>%
#'   replace_na_values()
#'
#' # English example
#' ESS_2024_results_Naclean <- ESS_2024_results_cleanlists %>%
#'   replace_na_values()
#' }
#'
#' @export


replace_na_values <- function(data) {
  data %>%
    mutate(across(everything(), ~replace(.x, .x %in% c("##N/A##", -999999999), NA)))
}
