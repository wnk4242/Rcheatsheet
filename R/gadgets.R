######gadgets##########
#' clear page and start a new prompt
#' @export
exit <- function() {
  cat("\014")
  cat('See ya!')
  }   #this one is used as an exit button

#' ask to go to main menu
ask <- function(){                   #this one is used to ask if the user need more help
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "I'm good.")),
         go(),
         exit())
}

#' ask to go to APA page
#' @export
ask_APA <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         APA(),
         exit())
}

#' ask to go to set up page
#' @export
ask_setup <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         setup(),
         exit())
}

#' ask to go to clean and manipulation page
#' @export
ask_clean <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         clean(),
         exit())
}



#' ask to go to life saving package page
#' @export
ask_dplyr <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         lifesaver(),
         exit())
}

#' ask to go to diary page
#' @export
ask_diary <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         diary(),
         exit())
}

#' ask to go to csbuilder
#' @export
ask_csbuilder <- function(){
  cat(bold$cyan('Do you need to add more examples?'))
  switch(menu(c("Continue adding examples (will not clear console)","Build a new cheat sheet (warning: will clear console!)", "Go back to main menu","I'm good.")),
         ask_extra(),
         csbuilder(),
         go(),
         exit())
}

#' ask if need to add more examples
#' @export
ask_extra <- function(){      #This serves to ask if need add extra examples
  {cat(rep("\n", 10))
    cat(bold$red('\nAdding new examples\n\n'))
    example <- readline(prompt="Give an example of the function format: ")
    cat(rep("\n", 10))
    addexample <- writeLines(paste(
    cat(bold$blue('Copy the following code:\n')),
    cat(bold$blue('##################################')),'\n\n',
    "cat(bold$red('Example:\\n'),",
                   "'\\t ",example, "\\n\\n')", sep = ""))
   cat(bold$blue('\n\n##################################\n'))
   cat(bold$blue('Insert the above extra example code to the main code\n'))
  cat(rep("\n", 5))
  ask_csbuilder()
  }
}

