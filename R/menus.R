######Menu selection#######
#' main menu
#' @export
go <- function(){
  cat("\014")
  require(crayon)
  cat(bold$red('\n| Main menu\n'))
  switch(menu(c("List of cheat sheet\n",
                "Environment setup\n",
                "Data wrangling\n",
                "Lifesaving packages\n",
                "Statistical analysis\n",
                "APA formatting\n",
                "Cheat sheet building\n",
                "Package update diary\n",
                "Quit")),
         command(),
         setup(),
         wrangle(),
         lifesaver(),
         stanalysis(),
         APA(),
         builder(),
         diary(),
         exit()
  )
}

#' Environment setup menu
#' @export
setup <- function(){
  cat("\014")
  cat(bold$red('\n| Environment setup\n'))
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

#' Data wrangling menu
#' @export
wrangle <- function(){
  cat("\014")
  cat(bold$red('\n| Data wrangling\n'))
  switch(menu(c("name objects",
                "create a data frame",
                "go back to the main menu",
                "quit")),
         naming(),
         dataframe(),
         go(),
         exit())
}

#' Lifesaving packages menu
#' @export
lifesaver<- function(){
  cat("\014")
  cat(bold$red('\n| Lifesaving packages\n'))
  switch(menu(c("dplyr grammar",
                "go back to the main menu",
                "quit")),
         DplyR(),
         go(),
         exit())}


#' dplyr grammar menu
#' @export
DplyR <- function(){
  cat("\014")
  cat(bold$red('\n| dplyr grammar\n'))
  switch(menu(c("convert a data frame to tibble: tbl()",
                "go back to the previous menu",
                "go back to the main menu",
                "quit")),
         tbl(),
         lifesaver(),
         go(),
         exit())
}

#'Statistical analysis menu
#'@export
stanalysis <- function(){
  cat('\014')
  cat(bold$red('\n| Statistical analysis\n'))
  switch(menu(c("perform multiple regression",
                "go back to the main menu",
                "quit")),
         mulreg(),
         go(),
         exit())
}


#' APA formatting menu
#' @export
APA <- function(){
  cat("\014")
  cat(bold$red('\n| APA formatting\n'))
  switch(menu(c("cite a journal article in APA style",
                "go back to the main menu",
                "quit")),
         APAjournal(),
         go(),
         exit())
}

#' Package update diary menu
#' @export
diary <- function(){
  cat("\014")
  cat(bold$red('\n| Package update diary\n'))
  switch(menu(c("July 7th, 2019",
                "July 8th, 2019",
                "July 9th, 2019",
                "July 10th, 2019",
                "July 11th, 2019",
                "July 13th, 2019",
                "July 14th, 2019",
                "go back to the main menu",
                "quit")),
         July072019(),
         July082019(),
         July092019(),
         July102019(),
         July112019(),
         July132019(),
         July142019(),
         go(),
         exit())
}

#'Cheat sheet building tools menu
#'@export
builder <- function(){
  cat('\014')
  cat(bold$red('\n| Cheat sheet building tools\n'))
  switch(menu(c("cheat sheet builder", "menu builder", "gadget builder",
                "go back to the main menu",
                "quit")),
         csbuilder(), menubuilder(), gadgetbuilder(),
         go(),
         exit())
}
