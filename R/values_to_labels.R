#' Remplacer des valeurs par leurs labels dans un data frame / Replace Values with Labels in a Data Frame
#'
#' @description
#' **Français :** Cette fonction remplace les valeurs codées par leurs labels respectifs, en utilisant une
#' nomenclature fournie dans un data frame de correspondance. Elle peut être appliquée à toutes les colonnes
#' ou uniquement à une sélection spécifique. La fonction est compatible avec `dplyr`, permettant un usage
#' dans une chaîne de pipes.
#'
#' **English :** This function replaces coded values with their corresponding labels, using a lookup
#' (nomenclature) data frame. It can be applied to all columns or only to specific ones, as specified.
#' The function is compatible with `dplyr` for use within a pipe chain.
#'
#' @param data
#' **Français :** Le data frame contenant les données avec les valeurs codées (par exemple, `ESS_2024`).
#' **English :** The data frame containing the coded values (e.g., `ESS_2024`).
#'
#' @param nomenclature_df
#' **Français :** Le data frame de nomenclature contenant les correspondances entre les variables, les valeurs
#' et les labels (doit contenir au moins les colonnes `variable_name`, `value`, `value_label`).
#' **English :** The nomenclature data frame containing mappings between variables, values, and labels
#' (must include at least `variable_name`, `value`, and `value_label` columns).
#'
#' @param columns
#' **Français :** Vecteur de noms de colonnes à traiter. Peut être `"all"` pour toutes les colonnes, ou un
#' vecteur de noms spécifiques (par exemple, `c("Colonne1", "Colonne2")`).
#' **English :** Vector of column names to process. Can be `"all"` for all columns, or a specific vector
#' of column names (e.g., `c("Column1", "Column2")`).
#'
#' @return
#' **Français :** Le data frame avec les valeurs remplacées par les labels, si disponible dans la nomenclature.
#' Un message est affiché indiquant les colonnes pour lesquelles les valeurs ont été remplacées et celles pour
#' lesquelles aucun remplacement n'a été fait.
#' **English :** The data frame with values replaced by labels if available in the nomenclature.
#' A message is displayed showing which columns had values replaced and which did not.
#'
#' @details
#' **Français :** Cette fonction est conçue pour être utilisée dans une chaîne `dplyr` et retourne un data frame
#' modifié. Elle remplace les valeurs dans `data` par les labels présents dans `nomenclature_df` pour les colonnes
#' spécifiées. Si `columns` est `"all"`, toutes les colonnes de `data` seront traitées, sinon seules les colonnes
#' spécifiées dans `columns` seront modifiées.
#'
#' **English :** This function is designed to be used within a `dplyr` pipeline and returns a modified data frame.
#' It replaces values in `data` with labels from `nomenclature_df` for the specified columns. If `columns`
#' is `"all"`, all columns in `data` are processed; otherwise, only the columns specified in `columns` are modified.
#'
#' @examples
#' \dontrun{
#' # Exemple d'utilisation en français
#' ESS_2024_labeled <- ESS_2024 %>%
#'   values_to_labels(nomenclature_df, columns = "all")
#'
#' # Example in English
#' ESS_2024_labeled <- ESS_2024 %>%
#'   values_to_labels(nomenclature_df, columns = "all")
#' }
#'
#' @export
values_to_labels <- function(data, nomenclature_df, columns = "all") {
  # Vérifier que data est un data frame
  data <- as.data.frame(data)

  # Déterminer les colonnes à traiter
  if (identical(columns, "all")) {
    columns_to_process <- colnames(data)
  } else {
    columns_to_process <- columns
  }

  # Initialiser les listes pour suivre les colonnes traitées
  columns_replaced <- character(0)
  columns_not_replaced <- character(0)

  # Parcourir chaque colonne à traiter
  for (col in columns_to_process) {
    if (col %in% colnames(data)) {
      # Vérifier si la variable est présente dans la nomenclature
      if (col %in% unique(nomenclature_df$variable_name)) {
        # Extraire les mappings pour cette variable
        mapping_df <- nomenclature_df[nomenclature_df$variable_name == col, ]
        mapping <- setNames(mapping_df$value_label, mapping_df$value)

        # Convertir la colonne en caractère si nécessaire
        data[[col]] <- as.character(data[[col]])

        # Remplacer les valeurs par les labels
        data[[col]] <- ifelse(data[[col]] %in% names(mapping), mapping[data[[col]]], data[[col]])

        columns_replaced <- c(columns_replaced, col)
      } else {
        # Variable non présente dans la nomenclature
        columns_not_replaced <- c(columns_not_replaced, col)
      }
    } else {
      # Colonne non trouvée dans les données
      columns_not_replaced <- c(columns_not_replaced, col)
      warning(paste("La colonne", col, "n'existe pas dans les données."))
    }
  }

  # Afficher les messages
  if (length(columns_replaced) > 0) {
    message("Valeurs remplacées par labels pour les colonnes : ", paste(columns_replaced, collapse = ", "))
  }
  if (length(columns_not_replaced) > 0) {
    message("Pas de remplacement effectué pour les colonnes : ", paste(columns_not_replaced, collapse = ", "))
  }

  # Retourner le data frame modifié
  return(data)
}
