#' The type of expression objects
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{EXPRSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of \code{\link{expression}} objects.
#'
#' @section Declaration:
#' ```
#' #define EXPRSXP 20 /* expressions vectors */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name EXPRSXP
NULL