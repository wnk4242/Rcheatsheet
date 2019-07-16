#' This function is used to build menu
#' @export

menubuilder <- function(){
  cat("\014")
  cat(bold$red('\nWelcome to menu Builder!\n'))
  cat(bold$red('\nBuild a new menu\n\n'))
  cat(bold$blue("Main menu\n",
                "|                       |--cheatsheet_1-1a\n",
                "|        |--menu_1-1----|--cheatsheet_1-1b\n",
                "|-menu_1-|--menu_1-2    |--cheatsheet_1-1c\n",
                "|        |--menu_1-3\n",
                "|\n",
                "|        |--menu_2-1\n",
                "|-menu_2-|--menu_2-2\n",
                "|        |--menu_2-3\n\n"))
  menu.name <- readline(prompt="Name the menu function (do not include (), e.g. setup): ")
  menu.des <- readline(prompt="Entitle the menu in a few words (n.+v.~ing or n.+n., e.g. Environment setup): ") #two words would be perfect: none + v-ing b/c will be listed in main menu
  function.name <- readline(prompt="Name the cheat sheet function(s) on this menu (add () after name and seperate by comma, e.g. install()): ") #should be the same as the one named by csbuilder
  function.des <- readline(prompt="Describe the cheat sheet(s) on this menu (quote each description and seperate by comma: e.g. read in dataset): ") #should be the same as the one put by csbuilder
  cat(rep("\n", 10))
  writeLines(paste(cat(bold$blue('Copy and paste the following code to menus.R\n')),
                   cat(bold$blue('##################################\n')),'\n\n',
                   "#'", menu.des," menu\n",
                   "#'@export\n",
                   menu.name," <- function(){", '\n\t',
                   "cat('\\014')",'\n\t',
                   "cat(bold$red('\\n| ", menu.des, "\\n'))\n\t",
                   "switch(menu(c(", function.des,",\n\t",
                   c("\"go back to the main menu\""),",\n\t",
                   c("\"quit\""), ")),\n\t",
                   function.name,",\n\t",
                   "mmenu(),\n\t",
                   "exit())",
                   "\n\t}",
                   sep = ""))
  cat(bold$blue('\n\n##################################\n'))
  cat(rep("\n", 5))
  ask_builder()
}


