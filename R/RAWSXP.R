#' The type of raw vectors
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{RAWSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of \code{\link{raw}} vectors.
#'
#' @section Declaration:
#' ```
#' #define RAWSXP 24 /* raw bytes */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name RAWSXP
NULL