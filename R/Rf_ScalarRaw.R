#' Rf_ScalarRaw
#'
#' @description
#'
#' ![](fnp.svg "Pure function") ![](c2r.svg "C to R") ![](prot.svg "protect")
#'
#' Converts an [Rbyte] (unsigned char) to a [SEXP] object that represents an R
#' length one \code{raw} vector.
#'
#' @section Declaration:
#' ```
#' SEXP Rf_ScalarRaw(Rbyte x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' INLINE_FUN SEXP ScalarRaw(Rbyte x)
#' {
#'   SEXP ans = allocVector(RAWSXP, 1);
#'   SET_SCALAR_BVAL(ans, x);
#'   return ans;
#' }
#' ```
#' In [Rinlinedfuns.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinlinedfuns.h).
#'
#' @param x an [Rbyte] value.
#'
#' @return A [SEXP] object, namely a length one (one byte) \code{raw} vector.
#'
#' @examples
#' # Convert a C unsigned char to an R length one raw vector
#' asterisk_byte <- inline::cfunction(NULL,
#'  " Rbyte x = '*'; // '*' is 42 in decimal, 2a in hexadecimal.
#'    SEXP y;
#'    y = PROTECT(Rf_ScalarRaw(x));
#'    UNPROTECT(1);
#'    return y;
#'  ")
#' asterisk_byte()
#'
#' @name Rf_ScalarRaw
#' @aliases ScalarRaw
#'
NULL