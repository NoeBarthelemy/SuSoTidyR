#' Identifier les colonnes à supprimer / Identify Columns to Remove
#'
#' @description
#' **Français :** Cette fonction identifie les colonnes dans un data frame contenant uniquement des valeurs
#' spécifiques de données manquantes (`-999999999`, `##N/A##`, ou `NA`). Elle est conçue pour une utilisation
#' interne au package et n'est pas destinée à être directement accessible par les utilisateurs.
#'
#' **English :** This function identifies columns in a data frame that contain only specified missing values
#' (`-999999999`, `##N/A##`, or `NA`). It is designed for internal package use and is not intended to be
#' directly accessible by users.
#'
#' @param data
#' **Français :** Un data frame dans lequel les colonnes contenant uniquement des valeurs manquantes spécifiques
#' seront identifiées.
#' **English :** A data frame in which columns containing only specified missing values will be identified.
#'
#' @return
#' **Français :** Un vecteur de noms de colonnes à supprimer, c'est-à-dire celles contenant uniquement
#' les valeurs manquantes spécifiées.
#' **English :** A vector of column names to remove, i.e., those containing only the specified missing values.
#'
#' @details
#' **Français :** Cette fonction utilise `dplyr` pour sélectionner les colonnes numériques et de type caractère,
#' puis vérifie si elles ne contiennent que les valeurs `-999999999`, `##N/A##`, ou `NA`. Les noms de colonnes
#' identifiés sont renvoyés sous forme de vecteur.
#'
#' **English :** This function uses `dplyr` to select numeric and character columns, then checks if they contain
#' only `-999999999`, `##N/A##`, or `NA` values. The identified column names are returned as a vector.
#'
#' @examples
#' \dontrun{
#' # Exemple en français
#' cols_to_remove <- identify_cols_to_remove(data)
#'
#' # English example
#' cols_to_remove <- identify_cols_to_remove(data)
#' }
identify_cols_to_remove <- function(data) {
  data %>%
    select(where(is.numeric), where(is.character)) %>%
    summarise(across(everything(), ~ all(.x == -999999999 | .x == "##N/A##" | is.na(.x)))) %>%
    select(where(~ .x)) %>%
    names()
}
