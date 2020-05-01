#' The type of weak references
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{WEAKREFSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of weak reference objects.
#'
#' @section Declaration:
#' ```
#' #define WEAKREFSXP 23 /* weak reference */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name WEAKREFSXP
NULL