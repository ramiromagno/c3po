#' R_NilValue
#'
#' @description
#'
#' ![](variable.svg "variable")
#'
#' R_NilValue is a global (external) variable of type [SEXP]. This is the C
#' counterpart of R's \code{\link{NULL}}.
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