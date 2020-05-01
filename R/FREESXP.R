#' The type of R's node released by GC
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{FREESXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of nodes released by garbage collector.
#'
#' @section Declaration:
#' ```
#' #define FREESXP 31 /* node released by GC */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name FREESXP
NULL