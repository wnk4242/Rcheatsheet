#' This function is used to build page
#' @export

pagebuilder <- function(){
  cat("\014")
  cat(bold$red('\nWelcome to Page Builder!\n'))
  cat(bold$red('\nBuild a new page\n'))
  cat(bold$red('\n(page will be shown on main menu)\n\n'))
  page.name <- readline(prompt="Name the page function (do not include (), e.g. setup): ")
  page.des <- readline(prompt="Entitle the page in a few words (n.+v.~ing or n.+n., e.g. Environment setup): ") #two words would be perfect: none + v-ing b/c will be listed in main menu
  function.name <- readline(prompt="Name the cheat sheet function(s) on this page (add () after name and seperate by comma, e.g. install()): ") #should be the same as the one named by csbuilder
  function.des <- readline(prompt="Describe the cheat sheet(s) on this page (quote each description and seperate by comma: e.g. read in dataset): ") #should be the same as the one put by csbuilder
  cat(rep("\n", 10))
  writeLines(paste(cat(bold$blue('Copy and paste the following code to menus.R\n')),
                   cat(bold$blue('##################################\n')),'\n\n',
                   "#'", page.des," page\n",
                   "#'@export\n",
                   page.name," <- function(){", '\n\t',
                   "cat('\\014')",'\n\t',
                   "cat(bold$red('\\n| ", page.des, "\\n'))\n\t",
                   "switch(menu(c(", function.des,",\n\t",
                   c("\"go back to the main menu\""),",\n\t",
                   c("\"quit\""), ")),\n\t",
                   function.name,",\n\t",
                   "go(),\n\t",
                   "exit())",
                   "\n\t}",
                   sep = ""))
  cat(bold$blue('\n\n##################################\n'))
}


