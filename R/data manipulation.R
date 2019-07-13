######Package code Data cleaning and manipulatioin#######
#' data.frame function template
dataframe <- function(){
  cat(rep("\n", 20))
  cat(bold$blue('\n| Buid a data frame\n\n'))
  cat(bold$red('Example:\n'),
      '\tdata.frame(
                    id = c(1:5),
                    name = c("Rick","Dan","Michelle","Ryan","Gary"),
                    salary = c(100,200,300,400,500)
                    )')
  cat(rep("\n", 3))
  ask_clean()
}

#' tbl_df function template
tbl <- function(){
  cat(rep("\n", 20))
  cat(bold$blue('\n| Convert a data frame to tibble\n\n'))
  cat(bold$red('Example:\n'),
      "\ttbl_df(dataframe_name)")
  cat(rep("\n", 3))
  ask_clean()
}

#' names and setNames function template
naming <- function(){
  cat(rep("\n", 20))
  cat(bold$blue('\n| Name objects\n\n'))
  cat(bold$red('Example:\n'),
      '\tx <- c(a = 1, b = 2, c = 3)\n \n')
  cat(bold$red('Example:\n'),
      '\tx <- 1:3; names(x) <- c("d", "e", "f")\n \n')
  cat(bold$red('Example:\n'),
      '\tx <- setNames(1:3, c("g", "h", "i"))')
  cat(rep("\n", 3))
  ask_clean()
}
