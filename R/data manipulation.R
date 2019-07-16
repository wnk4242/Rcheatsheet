######Package code Data wrangling#######
#' data.frame function template
#' @export
cs_data.frame <- function(){
  cat("\014")
  cat(bold$blue('\n| Buid a data frame\n\n'))
  cat(bold$red('Example:\n'),
      '\tdata.frame(
                    id = c(1:5),
                    name = c("Rick","Dan","Michelle","Ryan","Gary"),
                    salary = c(100,200,300,400,500)
                    )')
  cat(rep("\n", 3))
  ask_wrangle()
}



#' names and setNames function template
#' @export
cs_name <- function(){
  cat("\014")
  cat(bold$blue('\n| Name objects\n\n'))
  cat(bold$red('Example:\n'),
      '\tx <- c(a = 1, b = 2, c = 3)\n \n')
  cat(bold$red('Example:\n'),
      '\tx <- 1:3; names(x) <- c("d", "e", "f")\n \n')
  cat(bold$red('Example:\n'),
      '\tx <- setNames(1:3, c("g", "h", "i"))')
  cat(rep("\n", 3))
  ask_wrangle()
}
