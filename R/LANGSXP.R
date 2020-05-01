#' The type of language constructs
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')}
#'
#' \code{LANGSXP} is an object-like macro defining the \code{\link{SEXPTYPE}}
#' type of language constructs such \code{\link{call}} and \code{\link{formula}}
#' objects.
#'
#' @section Declaration:
#' ```
#' #define LANGSXP 6 /* language constructs (special lists) */
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#'
#' @seealso
#' [SEXPTYPE],
#' [TYPEOF]
#'
#' @name LANGSXP
NULL