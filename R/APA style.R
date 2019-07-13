######Package code APA formatting and style#######
#' Citing a journal article in APA style template
#' @export
APAjournal <- function(){
  cat("\014")
  cat(bold$blue('\n| Cite a journal article in APA style\n'))
  cat(bold$red('\nExample:\n'),'\tDerwing, T. M., Rossiter, M. J., & Munro, M. J. (2002). Teaching native speakers to listen to foreign-accented speech.' %+%
        italic('Journal of Multilingual and Multicultural Development, 23')%+%
        '(4), 245-259.')
  cat(rep("\n", 3))
  ask_APA()
}
