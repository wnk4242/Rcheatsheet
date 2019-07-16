#' tbl_df function template
#' @export
cs_tbl <- function(){
  cat("\014")
  cat(bold$blue('\n| Convert a data frame to tibble\n\n'))
  cat(bold$red('Example:\n'),
      "\ttbl_df(dataframe_name)")
  cat(rep("\n", 3))
  ask_dplyrpkg()
}
