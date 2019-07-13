######gadgets##########
#' clear page and start a new prompt
exit <- function() cat('See ya!',rep("\n", 20)) #this one is used as an exit button

#' ask to go to main menu
ask <- function(){                   #this one is used to ask if the user need more help
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "I'm good.")),
         go(),
         exit())
}

#' ask to go to APA page
ask_APA <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         APA(),
         exit())
}

#' ask to go to set up page
ask_setup <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         setup(),
         exit())
}

#' ask to go to clean and manipulation page
ask_clean <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         clean(),
         exit())
}

#' ask to go to diary page
ask_diary <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to previous page!", "I'm good.")),
         go(),
         diary(),
         exit())
}

#' ask to go to csbuilder
ask_csbuilder <- function(){
  cat(bold$cyan('Need more help?'))
  switch(menu(c("Sure! Go back to main menu!", "Sure! Go back to cheat sheet builder!", "I'm good.")),
         go(),
         builder(),
         exit())
}
