
#' This function is used to build ask_pagename gadget
#' @export

# note that you need to give function.des() a value

gadgetbuilder <- function(){
  pagename <- readline(prompt="Name the page: ")
  writeLines(paste(cat(bold$blue('Copy and paste the following code to gadgets.R\n')),
                   cat(bold$blue('##################################\n')),'\n\n',
    "#'", function.des,"\n",
    "#'@export\n",
    "ask_",pagename," <- function(){", '\n\t',
    "cat(bold$cyan('Need more help?'))",'\n\t',
    "switch(menu(c(",c("'Sure! Go back to previous menu!'"),",\n\t",
    c("\"Sure! Go back to main menu!\""),",\n\t",
    c("\"I'm good.\""), ")),\n\t",
    pagename,"(),\n\t",
    "go(),\n\t",
    "exit())",
    "\n\t}",
    sep = ""))
  cat(bold$blue('\n\n##################################\n'))
}

#function.des <- c("THIS IS A TEST")


