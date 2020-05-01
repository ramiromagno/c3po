#' Convert a scalar R object to a C string
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mfn')} \Sexpr[results=rd, stage=render]{c3po:::badge('r2c')}
#'
#' Both \code{CHARACTER_VALUE} and \code{STRING_VALUE} convert a scalar R object to a
#' C-string \code{(char *)}.
#'
#' @section Declaration:
#' ```
#' #define CHARACTER_VALUE(x) CHAR(Rf_asChar(x))
#' #define STRING_VALUE(x) CHAR(Rf_asChar(x))
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @param x a pointer \code{\link{SEXP}}, of which only the first element is
#'   used.
#'
#' @return C string, i.e., a pointer \code{char *}.
#'
#' @examples
#' # Convert an R object to a C-string (char *)
#' to_string <- inline::cfunction(c(x = "any"),
#' ' const char* x_;
#'   x_ = CHARACTER_VALUE(x);
#'   Rprintf("%s\\n", x_);
#'   return R_NilValue;
#' ')
#'
#' invisible(to_string(1L))
#' invisible(to_string(pi))
#' invisible(to_string(TRUE))
#' invisible(to_string(list(a = 'b')))
#'
#' @seealso
#' [R_CHAR],
#' [Rf_asChar]
#'
#' @name CHARACTER_VALUE
#' @aliases STRING_VALUE
#'
NULL