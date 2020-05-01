#' The type of promise objects
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{PROMSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of \code{\link{promise}} objects.
#'
#' @section Declaration:
#' ```
#' #define PROMSXP 5 /* promises: [un]evaluated closure arguments */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name PROMSXP
NULL