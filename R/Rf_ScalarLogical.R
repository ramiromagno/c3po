#' Rf_ScalarLogical
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('c2r')} \Sexpr[results=rd, stage=render]{c3po:::badge('prot')}
#'
#' Converts an \code{int x} to a [SEXP] object that represents an R length one
#' \code{logical} vector. The mapping from C integers to R's logical is:
#' - If \code{x} is [NA_LOGICAL], then return value is \code{NA} ([R_LogicalNAValue])
#' - If \code{x} is 0, then return value is \code{FALSE} ([R_FalseValue])
#' - If \code{x} is any other value, then the return value is \code{TRUE} ([R_TrueValue])
#'
#' @section Declaration:
#' ```
#' SEXP Rf_ScalarLogical(int x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' INLINE_FUN SEXP ScalarLogical(int x)
#' {
#'   extern SEXP R_LogicalNAValue, R_TrueValue, R_FalseValue;
#'   if (x == NA_LOGICAL) return R_LogicalNAValue;
#'   else if (x != 0) return R_TrueValue;
#'   else return R_FalseValue;
#' }
#' ```
#' In [Rinlinedfuns.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinlinedfuns.h).
#'
#' @param x an int value.
#'
#' @return A [SEXP] object, namely a length one \code{logical} vector.
#'
#' @examples
#' # Convert a C int number as an R length one logical vector with TRUE
#' true <- inline::cfunction(NULL,
#'  ' int x = 2;
#'    SEXP y;
#'    y = PROTECT(Rf_ScalarLogical(x));
#'    UNPROTECT(1);
#'    return y;
#'  ')
#' true()
#'
#' # Convert a C int number as an R length one logical vector with FALSE
#' false <- inline::cfunction(NULL,
#'  ' int x = 0;
#'    SEXP y;
#'    y = PROTECT(Rf_ScalarLogical(x));
#'    UNPROTECT(1);
#'    return y;
#'  ')
#' false()
#'
#' # Convert a C int number as an R length one logical vector with NA
#' na_logical <- inline::cfunction(NULL,
#'  ' int x = NA_LOGICAL;
#'    SEXP y;
#'    y = PROTECT(Rf_ScalarLogical(x));
#'    UNPROTECT(1);
#'    return y;
#'  ')
#' na_logical()
#'
#' @name Rf_ScalarLogical
#' @aliases ScalarLogical
#'
NULL