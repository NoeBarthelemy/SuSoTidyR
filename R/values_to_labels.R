#' Remplacer des valeurs par leurs labels dans un data frame en tenant compte des relations parent-enfant
#'
#' @description
#' **Français :** Cette fonction remplace les valeurs codées par leurs labels respectifs, en utilisant une
#' nomenclature fournie dans un data frame de correspondance, et tient compte des relations parent-enfant
#' définies par les colonnes `parentvalue` et `parent_variable`. Elle peut être appliquée à toutes les colonnes
#' ou uniquement à une sélection spécifique. La fonction est compatible avec `dplyr`, permettant un usage
#' dans une chaîne de pipes.
#'
#' **English:** This function replaces coded values with their corresponding labels, using a lookup
#' (nomenclature) data frame, and takes into account parent-child relationships defined by `parentvalue`
#' and `parent_variable`. It can be applied to all columns or only to specific ones, as specified.
#' The function is compatible with `dplyr` for use within a pipe chain.
#'
#' @param data
#' **Français :** Le data frame contenant les données avec les valeurs codées (par exemple, `ESS_2024`).
#' **English:** The data frame containing the coded values (e.g., `ESS_2024`).
#'
#' @param nomenclature_df
#' **Français :** Le data frame de nomenclature contenant les correspondances entre les variables, les valeurs,
#' les labels, et les relations parent-enfant (doit contenir au moins les colonnes `variable_name`, `value`,
#' `value_label`, `parent_variable`, `parentvalue`).
#' **English:** The nomenclature data frame containing mappings between variables, values, labels,
#' and parent-child relationships (must include at least `variable_name`, `value`, `value_label`,
#' `parent_variable`, `parentvalue` columns).
#'
#' @param columns
#' **Français :** Vecteur de noms de colonnes à traiter. Peut être `"all"` pour toutes les colonnes, ou un
#' vecteur de noms spécifiques (par exemple, `c("Colonne1", "Colonne2")`).
#' **English:** Vector of column names to process. Can be `"all"` for all columns, or a specific vector
#' of column names (e.g., `c("Column1", "Column2")`).
#'
#' @return
#' **Français :** Le data frame avec les valeurs remplacées par les labels, en tenant compte des relations
#' parent-enfant. Un message est affiché indiquant les colonnes pour lesquelles les valeurs ont été remplacées
#' et celles pour lesquelles aucun remplacement n'a été fait.
#' **English:** The data frame with values replaced by labels, taking into account parent-child relationships.
#' A message is displayed showing which columns had values replaced and which did not.
#'
#' @details
#' **Français :** Cette fonction est conçue pour être utilisée dans une chaîne `dplyr` et retourne un data frame
#' modifié. Elle remplace les valeurs dans `data` par les labels présents dans `nomenclature_df` pour les colonnes
#' spécifiées, en tenant compte des valeurs des variables parentes si nécessaire. Si `columns` est `"all"`, toutes
#' les colonnes de `data` seront traitées, sinon seules les colonnes spécifiées dans `columns` seront modifiées.
#'
#' **English:** This function is designed to be used within a `dplyr` pipeline and returns a modified data frame.
#' It replaces values in `data` with labels from `nomenclature_df` for the specified columns, taking into account
#' the values of parent variables when necessary. If `columns` is `"all"`, all columns in `data` are processed;
#' otherwise, only the columns specified in `columns` are modified.
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
  # Convertir en data frame
  data <- as.data.frame(data)

  # Identifier les colonnes à traiter
  if (identical(columns, "all")) {
    columns_to_process <- intersect(colnames(data), unique(nomenclature_df$variable_name))
    if (length(columns_to_process) == 0) {
      stop("Aucune colonne à traiter. Vérifiez que les noms de variables dans 'data' correspondent à ceux dans 'nomenclature_df'.")
    }
  } else {
    columns_to_process <- intersect(columns, colnames(data))
    if (length(columns_to_process) == 0) {
      stop("Aucune des colonnes spécifiées n'existe dans 'data'.")
    }
  }

  # Fonction interne pour traiter une seule colonne
  transform_column <- function(col) {
    message(sprintf("Traitement de la colonne '%s'", col))
    mapping_df <- nomenclature_df %>% filter(variable_name == col)

    if (!all(is.na(mapping_df$parent_variable))) {
      # Cas dépendant d'une variable parente
      parent_var <- unique(mapping_df$parent_variable)
      if (length(parent_var) > 1) {
        warning(sprintf("Plusieurs variables parentes pour '%s'. Utilisation de la première.", col))
        parent_var <- parent_var[1]
      }

      if (parent_var %in% colnames(data)) {
        message(sprintf("Variable parente trouvée pour '%s' : '%s'", col, parent_var))

        # Préparer les données pour la jointure
        temp_data <- data %>%
          mutate(value = as.character(data[[col]]),
                 parentvalue = as.character(data[[parent_var]])) %>%
          select(value, parentvalue)

        mapping_df <- mapping_df %>%
          mutate(value = as.character(value),
                 parentvalue = as.character(parentvalue))

        merged_df <- temp_data %>%
          left_join(mapping_df %>% select(value, parentvalue, value_label),
                    by = c("value", "parentvalue"))

        # Retourner la colonne transformée
        return(ifelse(!is.na(merged_df$value_label), merged_df$value_label, data[[col]]))
      } else {
        warning(sprintf("La variable parente '%s' pour '%s' n'existe pas dans les données.", parent_var, col))
        return(data[[col]]) # Retourner la colonne inchangée
      }
    } else {
      # Pas de diagnostic inutile pour les variables indépendantes
      mapping <- setNames(mapping_df$value_label, mapping_df$value)
      return(ifelse(data[[col]] %in% names(mapping), mapping[data[[col]]], data[[col]]))
    }
  }

  # Appliquer la transformation à chaque colonne spécifiée
  transformed_data <- lapply(columns_to_process, transform_column)

  # Remplacer les colonnes dans le jeu de données original
  for (i in seq_along(columns_to_process)) {
    data[[columns_to_process[i]]] <- transformed_data[[i]]
  }

  return(data)
}
