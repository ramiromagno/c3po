#' Rf_ScalarReal
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('c2r')} \Sexpr[results=rd, stage=render]{c3po:::badge('prot')}
#'
#' Converts a \code{double x} to a [SEXP] object that represents an R length one
#' \code{numeric} vector.
#'
#' @section Declaration:
#' ```
#' SEXP Rf_ScalarReal(double x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @param x a double
#'
#' @return A SEXP object, namely a length one \code{numeric} vector.
#'
#' @examples
#' # Convert a C double number as an R length one numeric vector
#' forty_two <- inline::cfunction(NULL,
#'  ' double x = 42.;
#'    SEXP y;
#'    y = PROTECT(Rf_ScalarReal(x));
#'    UNPROTECT(1);
#'    return y;
#'  ')
#' forty_two()
#'
#'
#' @name Rf_ScalarReal
#' @aliases ScalarReal
#'
NULL

