#' The type of external pointers
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{EXTPTRSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of external pointer objects.
#'
#' @section Declaration:
#' ```
#' #define EXTPTRSXP 22 /* external pointer */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name EXTPTRSXP
NULL