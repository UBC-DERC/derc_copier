#' @title A sample function to get you started
#' @name sample_function
#' @author {{ author_given }} {{ author_formal }} \email{{{ author_email }}}
#' @importFrom methods new
#' @param x integer A number of your choosing.
#' @returns True/False
#' @description A simple function to show how to use the
#'   package development tools for R as part of a project.
#' @md
#' @export
sample_function <- function(x = NA) {
  if (x == 1) {
    return(True)
  } else {
    return(False)
  }
}
