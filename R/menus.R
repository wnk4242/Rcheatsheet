######Menu selection#######
#' main menu
#' @export
go <- function(){
  cat(rep("\n", 20))
  cat(bold$red('\n| Main menu\n'))
  switch(menu(c("View the complete list of command",
                "Setting up environment",
                "Data cleaning and manipulation",
                "APA formatting and style",
                "Package update diary",
                "Cheat sheet builder",
                "Quit")),
         command(),
         setup(),
         clean(),
         APA(),
         diary(),
         csbuilder(),
         exit()
  )
}

#' set up page
#' @export
setup <- function(){
  cat(rep("\n", 20))
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

#' clean and manipulation page
#' @export
clean <- function(){
  cat(rep("\n", 20))
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
  cat(rep("\n", 20))
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
  cat(rep("\n", 20))
  cat(bold$red('\n| Package Update Diary\n'))
  switch(menu(c("July 7th, 2019",
                "July 8th, 2019",
                "July 9th, 2019",
                "July 10th, 2019",
                "July 11th, 2019",
                "go back to the main menu",
                "quit")),
         July072019(),
         July082019(),
         July092019(),
         July102019(),
         July112019(),
         go(),
         exit())
}
