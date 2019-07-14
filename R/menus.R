######Menu selection#######
#' main menu
#' @export
go <- function(){
  cat("\014")
  require(crayon)
  cat(bold$red('\n| Main menu\n'))
  switch(menu(c("View the complete list of command",
                "Setting up environment",
                "Data cleaning and manipulation",
                "Life saving package",
                "APA formatting and style",
                "Package update diary",
                "Cheat sheet builder",
                "Quit")),
         command(),
         setup(),
         clean(),
         lifesaver(),
         APA(),
         diary(),
         csbuilder(),
         exit()
  )
}

#' set up page
#' @export
setup <- function(){
  cat("\014")
  cat(bold$red('\n| Setting up programming environment\n'))
  switch(menu(c("install a package",
                "load in a library",
                "read in a data set",
                "go back to the main menu",
                "quit")),
         install(),
         lib(),
         read(),
         go(),
         exit())
}

#' lifesaver package
#' @export
lifesaver<- function(){
  cat("\014")
  cat(bold$red('\n| Life saving package\n'))
  switch(menu(c("dplyr grammar",
                "go back to the main menu",
                "quit")),
         DplyR(),
         go(),
         exit())}


#' dplyr grammar
#' @export
DplyR <- function(){
  cat("\014")
  cat(bold$red('\n| dplyr\n'))
  switch(menu(c("convert a data frame to tibble",
                "go back to the previous page",
                "go back to the main menu",
                "quit")),
         tbl(),
         lifesaver(),
         go(),
         exit())
}

#' clean and manipulation page
#' @export
clean <- function(){
  cat("\014")
  cat(bold$red('\n| Data cleaning and manipulation\n'))
  switch(menu(c("name objects",
                "create a data frame",
                "convert a data frame to tibble",
                "go back to the main menu",
                "quit")),
         naming(),
         dataframe(),
         tbl(),
         go(),
         exit())
}

#' APA page
#' @export
APA <- function(){
  cat("\014")
  cat(bold$red('\n| APA formatting and style\n'))
  switch(menu(c("cite a journal article in APA style",
                "go back to the main menu",
                "quit")),
         APAjournal(),
         go(),
         exit())
}

#' Diary page
#' @export
diary <- function(){
  cat("\014")
  cat(bold$red('\n| Package Update Diary\n'))
  switch(menu(c("July 7th, 2019",
                "July 8th, 2019",
                "July 9th, 2019",
                "July 10th, 2019",
                "July 11th, 2019",
                "July 13th, 2019",
                "go back to the main menu",
                "quit")),
         July072019(),
         July082019(),
         July092019(),
         July102019(),
         July112019(),
         July132019(),
         go(),
         exit())
}
