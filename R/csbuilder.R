#' automatic cheat sheet template builder
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
    template <- writeLines(paste(cat(bold$blue('Copy and paste the following main code to an R script file:\n')),
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
    cat(bold$blue('Save the above main code as functions.R (or whatever name you name it)\n'))
    cat(bold$blue('I would suggest you save all the cheat sheet code in a single .R file\n'))
    cat(bold$blue('To use your cheat sheets, run the following command in the console:\n'))
    cat(bold$green('if(!exists("foo", mode="function")) source("~/functions.R")\n'))
    cat(bold$blue('Note: "~" is your working directory\n'))
    cat(rep("\n", 5))
    ask_csbuilder()
}

#If you are building a package, run the following command in the CONSOLE to generate .Rd file:
#devtools::document()
