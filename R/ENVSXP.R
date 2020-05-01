#' The type of environment objects
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{ENVSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of \code{\link{environment}} objects.
#'
#' @section Declaration:
#' ```
#' #define ENVSXP 4 /* environments */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name ENVSXP
NULL