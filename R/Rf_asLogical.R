#' Convert an R scalar logical vector to a C int
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('r2c')}
#'
#' Converts a scalar (length one) \code{\link{logical}} vector
#' (\code{\link{SEXP}}) \code{x} to a C \code{int}.
#'
#' @section Declaration:
#' ```
#' int asLogical(SEXP x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' int asLogical(SEXP x)
#' {
#'   return asLogical2(x, /* checking = */ 0, R_NilValue, R_NilValue);
#' }
#' ```
#' In [coerce.c](https://github.com/wch/r-source/blob/trunk/src/main/coerce.c).
#'
#' @param x a pointer \code{\link{SEXP}}, referring to an object of type
#'   \code{\link{LGLSXP}}.
#'
#' @return A C \code{int} value.
#'
#' @examples
#' # Convert an R length one logical vector to a C int number
#' # Please note that the double backslash in "\\n" in Rprintf is only required
#' # because of the inlining of the code here.
#' rlogical_to_cint <- inline::cfunction(c(x = "logical"),
#'  ' int x_;
#'    x_ = Rf_asLogical(x);
#'    Rprintf("x_ is %d\\n", x_);
#'    return R_NilValue;
#'  ')
#' # NA is mapped to INT_MIN
#' invisible(rlogical_to_cint(NA))
#'
#' # Empty logical is also mapped to INT_MIN
#' invisible(rlogical_to_cint(NA))
#'
#' # FALSE is internally mapped to 0
#' invisible(rlogical_to_cint(FALSE))
#'
#' # TRUE is internally mapped to 1
#' invisible(rlogical_to_cint(TRUE))
#'
#' @name Rf_asLogical
#' @aliases asLogical
#'
NULL