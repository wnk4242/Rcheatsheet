######Package code Setting up environment#######
#' read function template
read<- function(){
  cat(rep("\n", 20))
  cat(bold$blue('\n| Read in a dataset\n\n'))
  cat(bold$red('Example:\n'),
      "\t read.delim ('https://.../file_name.csv', sep = ',', header = TRUE, stringsAsFactors = FALSE)\n \n") #use \n to print a new line and \t to indent
  cat(bold$red('Example:\n \t'),
      "read.csv ('D:/.../file_name.csv', header = TRUE, stringsAsFactors = FALSE)\n \n")
  cat(bold$red('Example:\n \t'),
      "read.table ('D:/.../file_name.txt', header = TRUE, stringsAsFactors = FALSE)\n \n")
  cat(bold$red('Tip:\n \t'),
      "For read.delim(): use sep = ',' if read in .csv; use sep = ' ' if read in .txt")
  cat(rep("\n", 3))
  ask_setup()
}

#' install.package function template
install <- function(){
  cat(rep("\n", 20))
  cat(bold$blue('\n| Install a package\n\n'))
  cat(bold$red('Example:\n'),
      "\t install.package('package_name')\n \n"
  )
  cat(bold$red('Example:\n \t'),
      "library(devtools)\n \t",
      "install_github('user_name/package_name')")
  cat(rep("\n", 3))
  ask_setup()
}

#' library function template
lib <- function(){
  cat(rep("\n", 20))
  cat(bold$blue('\n| Load in a library\n\n'))
  cat(bold$red('Example:\n'),
      "\t library(package_name)")
  cat(rep("\n", 3))
  ask_setup()
}
