#' Read qualtrics data csv
#'
#' Qualtrics exports data with bloat, this function is an opinionated wrapper of
#' readr::read_csv() which does some initial cleaning.
#'
#' @param legacy a Logical indicating if the export used the legacy exporter
#' @param file a csv of data exported from qualtrics
#'
#' @return A tibble of data
#' @export
read_qualtrics <- function(file, legacy = FALSE) {
  a <- readr::read_csv(file) %>% janitor::clean_names()
  if (legacy == FALSE) {
    a <- a[3:nrow(a), ]
  } else {
    a <- a[2:nrow(a), ]
  }
  a %>% readr::type_convert()
}
