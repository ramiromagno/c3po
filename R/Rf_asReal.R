#' Convert an R scalar double vector to a C double
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('r2c')}
#'
#' Converts a scalar (length one) \code{\link{double}} vector
#' (\code{\link{SEXP}}) \code{x} to a C \code{double}.
#'
#' @section Declaration:
#' ```
#' double asReal(SEXP x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' double asReal(SEXP x)
#'{
#'  int warn = 0;
#'  double res;
#'
#'  if (isVectorAtomic(x) && XLENGTH(x) >= 1) {
#'    switch (TYPEOF(x)) {
#'      case LGLSXP:
#'          res = RealFromLogical(LOGICAL_ELT(x, 0), &warn);
#'          CoercionWarning(warn);
#'          return res;
#'      case INTSXP:
#'          res = RealFromInteger(INTEGER_ELT(x, 0), &warn);
#'          CoercionWarning(warn);
#'          return res;
#'      case REALSXP:
#'          return REAL_ELT(x, 0);
#'      case CPLXSXP:
#'          res = RealFromComplex(COMPLEX_ELT(x, 0), &warn);
#'          CoercionWarning(warn);
#'          return res;
#'      case STRSXP:
#'          res = RealFromString(STRING_ELT(x, 0), &warn);
#'          CoercionWarning(warn);
#'          return res;
#'      default:
#'          UNIMPLEMENTED_TYPE("asReal", x);
#'    }
#'  } else if(TYPEOF(x) == CHARSXP) {
#'    res = RealFromString(x, &warn);
#'    CoercionWarning(warn);
#'    return res;
#'  }
#'  return NA_REAL;
#'}
#' ```
#' In [coerce.c](https://github.com/wch/r-source/blob/trunk/src/main/coerce.c).
#'
#' @param x a pointer \code{\link{SEXP}}, referring to an object of type
#'   \code{\link{REALSXP}}.
#'
#' @return A C \code{double} value.
#'
#' @examples
#' # Convert an R length one integer vector to a C double number
#' # Please note that the double backslash in "\\n" in Rprintf is only required
#' # because of the inlining of the code here.
#' rdouble_to_cdouble <- inline::cfunction(c(x = "double"),
#'  ' double x_;
#'    x_ = Rf_asReal(x);
#'    Rprintf("x_ is %f\\n", x_);
#'    return R_NilValue;
#'  ')
#' invisible(rdouble_to_cdouble(NA_real_))
#' invisible(rdouble_to_cdouble(NaN))
#' invisible(rdouble_to_cdouble(-1))
#' invisible(rdouble_to_cdouble(0))
#' invisible(rdouble_to_cdouble(1))
#' invisible(rdouble_to_cdouble(Inf))
#'
#' @name Rf_asReal
#' @aliases asReal
#'
NULL