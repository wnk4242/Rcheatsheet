#' automatic cheat sheet template
#' @export
csbuilder <- function() {
  cat("\014")
  cat(bold$red('\nWelcome to Cheat Sheet Builder!\n'))
  cat(bold$red('\nBuild a new cheat sheet\n\n'))
  function.name <- readline(prompt="Name your function: ")
  function.des <- readline(prompt="Describe function in a sentence: ")
  Rdcreator <- paste("#'", function.des)
    function.body <-  readline(prompt="Write function format: ")
    cat(rep("\n", 10))
    template <- writeLines(paste(cat(bold$blue('Copy and Paste the following main code to an R script file:\n')),
                                 cat(bold$blue('##################################\n')),'\n\n',
                                 Rdcreator, '\n',
                                 function.name,"<- function(){", '\n',
                                 "cat(rep('\\n',20))",'\n',
                                 "cat(bold$blue('\\n|", function.des,"\\n\\n'))",'\n',
                                 "cat(bold$red('Example:\\n'),",
                                 "'\\t ",function.body, "\\n\\n')",'\n',
                                 "# INSERT EXTRA EXAMPLE CODE IF APPLICABLE #",'\n',
                                 "cat(rep('\\n', 3))",'\n',
                                 "}",
                                 sep = ""))
    cat(bold$blue('\n\n##################################\n'))
    cat(bold$blue('Save the above main code as a new .R file or save it into an existing .R file\n'))
    cat(bold$blue('and run the following command in the CONSOLE to generate .Rd file for this function:\n'))
    cat(bold$blue('devtools::document()'))
    cat(rep("\n", 5))
    ask_csbuilder()
}

