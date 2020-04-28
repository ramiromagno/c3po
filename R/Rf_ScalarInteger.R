#' Rf_ScalarInteger
#'
#' @description
#'
#' ![](fnp.svg "Pure function") ![](c2r.svg "C to R") ![](prot.svg "protect")
#'
#' Converts an \code{int x} to a [SEXP] object that represents an \R length one
#' \code{integer} vector.
#'
#' @section Declaration:
#' ```
#' SEXP Rf_ScalarInteger(int x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' INLINE_FUN SEXP ScalarInteger(int x)
#' {
#'   SEXP ans = allocVector(INTSXP, 1);
#'   SET_SCALAR_IVAL(ans, x);
#'   return ans;
#' }
#' ```
#' In [Rinlinedfuns.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinlinedfuns.h).
#'
#' @param x an int value.
#'
#' @return A [SEXP] object, namely a length one \code{integer} vector.
#'
#' @examples
#' # Convert a C int number as an R length one integer vector
#' forty_two <- inline::cfunction(NULL,
#'  ' int x = 42;
#'    SEXP y;
#'    y = PROTECT(Rf_ScalarInteger(x));
#'    UNPROTECT(1);
#'    return y;
#'  ')
#' forty_two()
#'
#'
#' @name Rf_ScalarInteger
#' @aliases ScalarInteger
#'
NULL