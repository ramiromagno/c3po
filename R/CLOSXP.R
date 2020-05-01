#' The type of function objects
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{CLOSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of functions, i.e., \code{\link{closure}} objects.
#'
#' @section Declaration:
#' ```
#'#define CLOSXP 3 /* closures */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name CLOSXP
NULL