#' Coerce an R object to a scalar string (CHARSXP)
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('r2r')} \Sexpr[results=rd, stage=render]{c3po:::badge('prot')}
#'
#' Coerce an R object to a scalar string, i.e., to an R object of type
#' \code{\link{CHARSXP}}. This object type should only be used internally, i.e.,
#' it should not be returned back to R.
#'
#' @section Declaration:
#' ```
#' SEXP asChar(SEXP x);
#' ```
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section Definition:
#' ```
#' SEXP asChar(SEXP x)
#' {
#'   if (isVectorAtomic(x) && XLENGTH(x) >= 1) {
#'     int w, d, e, wi, di, ei;
#'     char buf[MAXELTSIZE];  /* Probably 100 would suffice */
#'
#'       switch (TYPEOF(x)) {
#'         case LGLSXP:
#'           if (LOGICAL(x)[0] == NA_LOGICAL)
#'             return NA_STRING;
#'         if (LOGICAL(x)[0])
#'           sprintf(buf, "TRUE");
#'         else
#'           sprintf(buf, "FALSE");
#'         return mkChar(buf);
#'         case INTSXP:
#'           if (INTEGER(x)[0] == NA_INTEGER)
#'             return NA_STRING;
#'         snprintf(buf, MAXELTSIZE, "%d", INTEGER(x)[0]);
#'         return mkChar(buf);
#'         case REALSXP:
#'           PrintDefaults();
#'         formatReal(REAL(x), 1, &w, &d, &e, 0);
#'         return mkChar(EncodeReal0(REAL(x)[0], w, d, e, OutDec));
#'         case CPLXSXP:
#'           PrintDefaults();
#'         formatComplex(COMPLEX(x), 1, &w, &d, &e, &wi, &di, &ei, 0);
#'         return mkChar(EncodeComplex(COMPLEX(x)[0], w, d, e, wi, di, ei, OutDec));
#'         case STRSXP:
#'           return STRING_ELT(x, 0);
#'         default:
#'           return NA_STRING;
#'       }
#'   } else if(TYPEOF(x) == CHARSXP) {
#'     return x;
#'   } else if(TYPEOF(x) == SYMSXP)
#'     return PRINTNAME(x);
#'   return NA_STRING;
#' }
#' ```
#' In [util.c](https://github.com/wch/r-source/blob/trunk/src/main/util.c).
#'
#' @param x a pointer \code{\link{SEXP}}.
#'
#' @return A pointer \code{\link{SEXP}}, referring to an object of type
#'   \code{\link{CHARSXP}}.
#'
#' @examples
#' # Coerces an R object to an object of type CHARSXP
#' print_char <- inline::cfunction(c(x = "any"),
#' ' const char * x_;
#'   x_ = R_CHAR(Rf_asChar(x));
#'   Rprintf("%s\\n", x_);
#'   return R_NilValue;
#' ')
#'
#' # Convert from STRSXP to CHARSXP
#' invisible(print_char("coal"))
#' invisible(print_char(c("charcoal", "coal")))
#' invisible(print_char(NA_character_))
#'
#' # Convert from LGLSXP to CHARSXP
#' invisible(print_char(TRUE))
#' invisible(print_char(FALSE))
#' invisible(print_char(NA))
#'
#' # Convert from INTSXP to CHARSXP
#' invisible(print_char(-1L))
#' invisible(print_char(1L))
#' invisible(print_char(NA_integer_))
#'
#' # Convert from REALSXP to CHARSXP
#' invisible(print_char(1.0))
#' invisible(print_char(-1))
#' invisible(print_char(NA_real_))
#'
#' # Convert from CPLXSXP to CHARSXP
#' invisible(print_char(2+5i))
#'
#' # Convert from SYMSXP to CHARSXP
#' invisible(print_char(as.symbol('a')))
#'
#' # Coercion from other object types to CHARSXP
#' # results in NA:
#' # From VECSXP to CHARSXP
#' invisible(print_char(list(a = 'b')))
#' # From ENVSXP to CHARSXP
#' invisible(print_char(.GlobalEnv))
#' # From CLOSXP to CHARSXP
#' invisible(print_char(function() {}))
#' # From EXPRSXP to CHARSXP
#' invisible(print_char(expression()))
#' # From LANGSXP to CHARSXP
#' invisible(print_char(~ 2 + x))
#'
#' @seealso
#' [R_CHAR]
#'
#' @name Rf_asChar
#' @aliases asChar
#'
NULL