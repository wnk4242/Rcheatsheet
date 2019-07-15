#' This function is used to build page
#' @export

pagebuilder <- function(){
  page.name <- readline(prompt="Name the page: ")
  page.des <- readline(prompt="Describe the page in a few words: ")
  function.name <- readline(prompt="Name the cheat sheet(s) in this page (add () after name and seperate by comma): ") #should be the same as the one named by csbuilder
  function.des <- readline(prompt="Describe the function(s) in this page (quote individual description and seperate by comma): ") #should be the same as the one put by csbuilder
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


