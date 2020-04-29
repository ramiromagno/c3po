#' TYPEOF
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mfn')}
#'
#' \code{TYPEOF} is a macro, function-like, that determines the type of an
#' [SEXPREC] object.
#'
#' @section Declaration:
#' ```
#' #define TYPEOF(x) ((x)->sxpinfo.type)
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @param x an [SEXP] pointer.
#'
#' @return An [SEXPTYPE] value (unsigned int).
#'
#' @examples
#' # Determine R objects' SEXPTYPEs
#' sexptype <- inline::cfunction(c(x = "ANY"),
#'  ' SEXP type_value;
#'    type_value = PROTECT(Rf_ScalarInteger(TYPEOF(x)));
#'    UNPROTECT(1);
#'    return type_value;
#'  ')
#'
#' # NULL, returns 0
#' sexptype(NULL)
#' # an empty pairlist also returns 0
#' sexptype(pairlist())
#'
#' # symbol, returns 1
#' sexptype(as.symbol('a'))
#'
#' # dotted pair list, returns 2
#' sexptype(pairlist(a = 1))
#'
#' # closure, returns 3
#' sexptype(function(x) {x + 1})
#'
#' # environment, returns 4
#' sexptype(.GlobalEnv)
#'
#' # promises, returns 5
#' # But how to get one?
#'
#' # language, returns 6
#' sexptype(call("sin", pi))
#'
#' # special forms, returns 7
#' sexptype(.Internal)
#'
#' # builtin non-special forms, returns 8
#' sexptype(.Primitive("sqrt"))
#'
#' # "scalar" string type (internal only), would return 9
#' # No way of getting hold of one of this in R land
#'
#' # logical vectors, returns 10
#' # sexptype(TRUE)
#'
#' # codes 12 and 13 are no longer in use
#' # used to be for factors and ordered factors in the 1990s
#'
#' # integer vectors, returns 13
#' sexptype(1L)
#' sexptype(factor('as')) # still an integer vector
#'
#' # real vectors, returns 14
#' sexptype(1)
#' sexptype(pi)
#' sexptype(double(1))
#' sexptype(numeric(1))
#'
#' # complex vectors, returns 15
#' sexptype(1i)
#' sexptype(0i)
#' sexptype(0 + 1i)
#' sexptype(NA_complex_)
#'
#' # string vectors , returns 16
#' sexptype("alice in wonderland")
#'
#' # TODO: dot-dot-dot object, returns 17
#'
#' # TODO: "any" args, returns 18
#'
#' # generic vectors, i.e., lists, returns 19
#' sexptype(list())
#'
#' # expression, returns 20
#' sexptype(expression(x + 2))
#'
#' # TODO: byte code, returns 21
#'
#' # TODO: external pointer, returns 22
#'
#' # TODO: weak reference, returns 23
#'
#' # raw bytes, returns 24
#' sexptype(raw(2))
#'
#' # TODO: S4, non-vector, returns 25
#'
#' # TODO: fresh node created in new page, returns 30
#'
#' # TODO: node released by GC, returns 31
#'
#' # TODO: Closure or Builtin or Special, returns 99
#'
#' @name TYPEOF
#' @seealso
#' [typeof]
#'
NULL