#' NILSXP
#'
#' @description
#'
#' ![](mobj.svg "macro object-like")
#'
#' There is only one object of type NILSXP, [R_NilValue], with no data.
#'
#' @section Declaration:
#' ```
#' define NILSXP 0 /* nil = NULL */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [R_NilValue]
#'
#' @name NILSXP
NULL