#' The type of R's NULL
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{NILSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of a \code{\link{SEXPREC}} object pointed by \code{\link{R_NilValue}}
#' (the R level \code{\link{NULL}} object).
#'
#' @section Declaration:
#' ```
#' #define NILSXP 0 /* nil = NULL */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [R_NilValue],
#' [TYPEOF]
#'
#' @name NILSXP
NULL