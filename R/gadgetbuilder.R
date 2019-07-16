
#' This function is used to build ask_menuname
#' @export

# note that you need to give function.des() a value
# also note that menuname must be the same as the menu name named by menubuilder (use the same menu name!)

linkbuilder <- function(){
  cat("\014")
  cat(bold$red('\nWelcome to Link Builder!\n'))
  cat(bold$red('\nBuild a new ask_menuname link\n\n'))
  menu.name <- readline(prompt="the menu function name (do not include (), e.g. setup): ")
  menu.des <- readline(prompt="the menu title (e.g. Environment setup): ") #should be the same in the main menu
  cat(rep("\n", 10))
  writeLines(paste(cat(bold$blue('Copy and paste the following code to gadgets.R\n')),
                   cat(bold$blue('##################################\n')),'\n\n',
                   "#' ask if go to ", menu.des," menu\n",
                   "#'@export\n",
                   "ask_",menu.name," <- function(){", '\n\t',
                   "cat(bold$cyan('Need more help?'))",'\n\t',
                   "switch(menu(c(",c("\"Sure! Go back to main menu!\""),",\n\t",
                   c("\"Sure! Go back to previous menu!\""),",\n\t",
                   c("\"I'm good.\""), ")),\n\t",
                   menu.name,"(),\n\t",
                   "exit())",
                   "\n\t}",
                   sep = ""))
  cat(bold$blue('\n\n##################################\n'))
  cat(rep("\n", 5))
  ask_builder()
}




