#' automatic cheat sheet template builder
#' @export
csbuilder <- function() {
  cat("\014")
  cat(bold$red('\nWelcome to Cheat Sheet Builder!\n'))
  cat(bold$red('\nBuild a new cheat sheet\n\n'))
  function.name <- readline(prompt="Name the cheat sheet of a function: ")
  function.des <- readline(prompt="Describe the function in a few words: ")
  page.name <- readline(prompt="Name the page in which this function is in a few words (no ()): ")
  Rdcreator <- paste("#'", function.des)
    function.body <-  readline(prompt="Give an example of the function format: ")
    cat(rep("\n", 10))
    template <- writeLines(paste(cat(bold$blue('Copy and paste the following main code to an R script file:\n')),
                                 cat(bold$blue('##################################\n')),'\n\n',
                                 Rdcreator, '\n',
                                 function.name,"<- function(){", '\n',
                                 "cat('\\014')",'\n',
                                 "cat(bold$blue('\\n|", function.des,"\\n\\n'))",'\n',
                                 "cat(bold$red('Example:\\n'),",
                                 "'\\t ",function.body, "\\n\\n')",'\n',
                                 "# INSERT EXTRA EXAMPLE CODE IF APPLICABLE #",'\n',
                                 "cat(rep('\\n', 3))",'\n',
                                 "ask_",page.name, "()",
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

#' ask if need to add more examples
#' @export
extraeg <- function(){      #This serves to ask if need add extra examples
  {cat(rep("\n", 10))
    cat(bold$red('\nAdding new examples\n\n'))
    example <- readline(prompt="Give an example of the function format: ")
    cat(rep("\n", 10))
    addexample <- writeLines(paste(
      cat(bold$blue('Copy the following code:\n')),
      cat(bold$blue('##################################')),'\n\n',
      "cat(bold$red('Example:\\n'),",
      "'\\t ",example, "\\n\\n')", sep = ""))
    cat(bold$blue('\n\n##################################\n'))
    cat(bold$blue('Insert the above extra example code to the main code\n'))
    cat(rep("\n", 5))
    ask_csbuilder()
  }
}

#If you are building a package, run the following command in the CONSOLE to generate .Rd file:
#devtools::document()
