#' Convert an R scalar integer vector to a C int
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('r2c')}
#'
#' Converts a scalar (length one) \code{\link{integer}} vector
#' (\code{\link{SEXP}}) \code{x} to a C \code{int}.
#'
#' @section Declaration:
#' ```
#' int Rf_asInteger(SEXP x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' int asInteger(SEXP x)
#' {
#'   int warn = 0, res;
#'
#'   if (isVectorAtomic(x) && XLENGTH(x) >= 1) {
#'     switch (TYPEOF(x)) {
#'     case LGLSXP:
#'         return IntegerFromLogical(LOGICAL_ELT(x, 0), &warn);
#'     case INTSXP:
#'         return INTEGER_ELT(x, 0);
#'     case REALSXP:
#'         res = IntegerFromReal(REAL_ELT(x, 0), &warn);
#'         CoercionWarning(warn);
#'         return res;
#'     case CPLXSXP:
#'         res = IntegerFromComplex(COMPLEX_ELT(x, 0), &warn);
#'         CoercionWarning(warn);
#'         return res;
#'     case STRSXP:
#'         res = IntegerFromString(STRING_ELT(x, 0), &warn);
#'         CoercionWarning(warn);
#'         return res;
#'     default:
#'          UNIMPLEMENTED_TYPE("asInteger", x);
#'       }
#'   } else if(TYPEOF(x) == CHARSXP) {
#'       res = IntegerFromString(x, &warn);
#'       CoercionWarning(warn);
#'       return res;
#'   }
#'   return NA_INTEGER;
#' }
#' ```
#' In [coerce.c](https://github.com/wch/r-source/blob/trunk/src/main/coerce.c).
#'
#' @param x a pointer \code{\link{SEXP}}, referring to an object of type
#'   \code{\link{INTSXP}}.
#'
#' @return A C \code{int} value.
#'
#' @examples
#' # Convert an R length one integer vector to a C int number
#' # Please note that the double backslash in "\\n" in Rprintf is only required
#' # because of the inlining of the code here.
#' rint_to_cint <- inline::cfunction(c(x = "integer"),
#'  ' int x_;
#'    x_ = Rf_asInteger(x);
#'    Rprintf("x_ is %d\\n", x_);
#'    Rprintf("INT_MIN is %d\\n", INT_MIN);
#'    return R_NilValue;
#'  ')
#' invisible(rint_to_cint(NA_integer_))
#' invisible(rint_to_cint(NaN))
#' invisible(rint_to_cint(-1L))
#' invisible(rint_to_cint(0L))
#' invisible(rint_to_cint(1L))
#' invisible(rint_to_cint(Inf))
#'
#' @name Rf_asInteger
#' @aliases asInteger
#'
NULL