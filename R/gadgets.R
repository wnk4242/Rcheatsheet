######gadgets##########
#' clear page and start a new prompt
#' @export
exit <- function() {
  cat("\014")
  cat('See ya!')
  }



#' ask if go to the main menu
#' @export
ask <- function(){                   #this one is used to ask if the user need more help
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "I'm good.")),
         go(),
         exit())
}



#' ask if go to Environment setup page
#' @export
ask_setup <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         setup(),
         exit())
}

#' ask if go to Data wrangling page
#' @export
ask_wrangle <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         wrangle(),
         exit())
}



#' ask if go to Lifesaving packages page
#' @export
ask_DplyR <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         DplyR(),
         exit())
}


#' ask if go to Statistical analysis page
#'@export
ask_stanalysis <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c('Sure! Go back to main menu!',
                "Sure! Go back to previous menu!",
                "I'm good.")),
         go(),
         stanalysis(),
         exit())
}


#' ask if go to APA formatting page
#' @export
ask_APA <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         APA(),
         exit())
}

#' ask if go to csbuilder
#' @export
ask_csbuilder <- function(){
  cat(bold$cyan('Do you need to add more examples?'))
  switch(menu(c("Continue adding examples (will not clear console)","Build a new cheat sheet (warning: will clear console!)", "Go back to main menu","I'm good.")),
         extraeg(),
         csbuilder(),
         go(),
         exit())
}

#' ask if go to Package update diary page
#' @export
ask_diary <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         diary(),
         exit())
}





