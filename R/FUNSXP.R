#' The pseudo-type lumping closure, builtin and special
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{FUNSXP} is an object-like macro defining a \code{\link{FUNSXP}}
#' pseudo-type of lumping closure, builtin and special objects.
#'
#' @section Declaration:
#' ```
#' #define FUNSXP 99 /* Closure or Builtin or Special */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name FUNSXP
NULL