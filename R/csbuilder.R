#' automatic cheat sheet template
csbuilder <- function() {
  cat(rep("\n", 20))
  cat(bold$red('\nWelcome to Cheat Sheet Builder\n'))
  cat(rep("\n", 5))
  function.name <- readline(prompt="Name your function: ")
  function.des <- readline(prompt="Describe function in a sentence: ")
  Rdcreator <- paste("#'", function.des)
  while(TRUE) {
    function.body <-  readline(prompt="Write function format: ")
    template <- writeLines(paste(Rdcreator, '\n',
                                 function.name,"<- function(){", '\n',
                                 "cat(rep('\\n',20))",'\n',
                                 "cat(bold$blue('\\n|", function.des,"\\n\\n'))",'\n',
                                 "cat(bold$red('Example:\\n'),",
                                 "'\\t ",function.body, "\\n\\n')",'\n',
                                 "# INSERT EXTRA EXAMPLE CODE IF APPLICABLE",'\n',
                                 "cat(rep('\\n', 3))",'\n',
                                 "ask_csbuilder()",'\n',
                                 "}",'\n',
                                 "# save this function as a new .R file or into an existing .R file",'\n',
                                 "# and run the following command IN CONSOLE to generate .Rd file for this function:",'\n',
                                 "# devtools::document()",
                                 sep = ""))
    if(readline("Type Y to continue adding examples. Type any other key to re-enter information.") == 'Y')
      break}
  while(TRUE){
    extra <- readline(prompt="Write function format: ")
    writeLines(paste("cat(bold$red('Example:\\n'),",
                     "'\\t ",extra, "\\n\\n')", sep = ""))
    if(readline("Type N to stop. Type any other key to continue adding examples.") == 'N')
      break
  }
  cat(rep("\n", 3))
  ask_csbuilder()
}



