#' Rf_ScalarComplex
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('c2r')} \Sexpr[results=rd, stage=render]{c3po:::badge('prot')}
#'
#' Converts a [Rcomplex] \code{x} to a SEXP object that represents an R length one
#' \code{complex} vector.
#'
#' @section Declaration:
#' ```
#' SEXP Rf_ScalarComplex(Rcomplex x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' INLINE_FUN SEXP ScalarComplex(Rcomplex x)
#' {
#'   SEXP ans = allocVector(CPLXSXP, 1);
#'   SET_SCALAR_CVAL(ans, x);
#'   return ans;
#' }
#' ```
#' In [Rinlinedfuns.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinlinedfuns.h).
#'
#' @param x an [Rcomplex] object.
#'
#' @return A [SEXP] object, namely a length one \code{\link{complex}} vector.
#'
#' @examples
#' # Convert a C complex number to an R length one complex vector
#' scalar_complex <- inline::cfunction(NULL,
#'  'double real = 1.;
#'   double imaginary = 2.;
#'   Rcomplex x;
#'   x.r = real;
#'   x.i = imaginary;
#'   SEXP y;
#'   y = PROTECT(Rf_ScalarComplex(x));
#'   UNPROTECT(1);
#'   return y;
#'  ')
#' scalar_complex()
#'
#'
#' @name Rf_ScalarComplex
#' @aliases ScalarComplex
#'
NULL