
#' This function is used to build ask_pagename
#' @export

# note that you need to give function.des() a value
# also note that pagename must be the same as the page name named by pagebuilder (use the same page name!)

gadgetbuilder <- function(){
  cat("\014")
  cat(bold$red('\nWelcome to Gadget Builder!\n'))
  cat(bold$red('\nBuild a new ask_pagename gadget\n\n'))
  page.name <- readline(prompt="Name the page (do not include ()): ")
  page.des <- readline(prompt="Describe the page in a few words: ") #should be the same in the same menu
  cat(rep("\n", 10))
  writeLines(paste(cat(bold$blue('Copy and paste the following code to gadgets.R\n')),
                   cat(bold$blue('##################################\n')),'\n\n',
                   "#' ask if go to ", page.des," page\n",
                   "#'@export\n",
                   "ask_",page.name," <- function(){", '\n\t',
                   "cat(bold$cyan('Need more help?'))",'\n\t',
                   "switch(menu(c(",c("\"Sure! Go back to main menu!\""),",\n\t",
                   c("\"Sure! Go back to previous menu!\""),",\n\t",
                   c("\"I'm good.\""), ")),\n\t",
                   "go(),\n\t",
                   page.name,"(),\n\t",
                   "exit())",
                   "\n\t}",
                   sep = ""))
  cat(bold$blue('\n\n##################################\n'))
}




