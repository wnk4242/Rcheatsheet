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
         mmenu(),
         exit())
}



#' ask if go to Environment setup menu
#' @export
ask_setup <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         setup(),
         mmenu(),
         exit())
}

#' ask if go to Data wrangling menu
#' @export
ask_wrangle <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         wrangle(),
         mmenu(),
         exit())
}



#' ask if go to Lifesaving packages menu
#' @export
ask_lifesaver <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         lifesaver(),
         mmenu(),
         exit())
}

#' ask if go to dplyrpkg  menu
#' @export
ask_dplyrpkg <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         dplyrpkg(),
         mmenu(),
         exit())
}






#' ask if go to csbuilder
#' @export
ask_csbuilder <- function(){
  cat(bold$cyan('Do you need to add more examples?'))
  switch(menu(c("Continue adding examples (will not clear console)","Build a new cheat sheet (warning: will clear console!)", "Go back to cheat sheet builders", "Go back to main menu","I'm good.")),
         extraeg(),
         csbuilder(),
         builder(),
         mmenu(),
         exit())
}

#' ask if go to package update diary menu
#' @export
ask_diary <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         diary(),
         mmenu(),
         exit())
}


#' ask if go to cheat sheet building menu
#'@export
ask_builder <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         builder(),
         mmenu(),
         exit())
}



#' ask if go to Statistical analysis menu
#' currently not using
#'@export
ask_stanalysis <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         stanalysis(),
         mmenu(),
         exit())
}


#' ask if go to APA formatting menu
#' currently not using
#' @export
ask_apastyle <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to the previous menu!", "Sure! Go back to the main menu!", "I'm good.")),
         apastyle(),
         mmenu(),
         exit())
}

