#' Convert a string scalar (CHARSXP) to a C-string (char *)
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('r2c')}
#'
#' Convert a string scalar (\code{\link{CHARSXP}}) to a C-string (\code{char
#' *}).
#'
#' @section Declaration:
#' ```
#' const char *(R_CHAR)(SEXP x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' const char *(R_CHAR)(SEXP x) {
#'   if(TYPEOF(x) != CHARSXP) // Han-Tak proposes to prepend  'x && '
#'   error("%s() can only be applied to a '%s', not a '%s'",
#'         "CHAR", "CHARSXP", type2char(TYPEOF(x)));
#'   return (const char *) CHAR(CHK(x));
#' }
#' ```
#' In [memory.c](https://github.com/wch/r-source/blob/trunk/src/main/memory.c).
#'
#' @param x a pointer \code{\link{SEXP}}, of type \code{\link{CHARSXP}}.
#'
#' @return C string, i.e., a pointer \code{char *}.
#'
#' @seealso
#' [Rf_asChar]
#'
#' @name R_CHAR
#' @aliases CHAR
#'
NULL