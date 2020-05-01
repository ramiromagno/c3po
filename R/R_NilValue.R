#' R_NilValue
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('variable')}
#'
#' \code{R_NilValue} is a global (external) variable of type \code{\link{SEXP}}.
#' \code{R_NilValue} points to the C level implementation of R's
#' \code{\link{NULL}} object.
#'
#' @section Declaration:
#' ```
#' LibExtern SEXP	R_NilValue; /* The nil object */
#' ```
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' GET_FREE_NODE(R_NilValue);
#' ```
#' In [memory.c](https://github.com/wch/r-source/blob/trunk/src/main/memory.c).
#'
#' @seealso
#' [NULL],
#' [NILSXP],
#' [TYPEOF]
#'
#' @name R_NilValue
NULL