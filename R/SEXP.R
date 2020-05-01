#' Pointer to SEXPREC
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('typedef-strp')}
#'
#' A pointer to an object of type \code{\link{SEXPREC}}, \R’s fundamental data
#' type at the C-level. SEXP is short for Symbolic EXPression and is borrowed
#' from Lisp. Note that the internal structure of the \code{\link{SEXPREC}} is
#' not made available to \R Extensions: rather SEXP is an opaque pointer, and
#' the internals can only be accessed by the functions provided.
#'
#' @section Declaration:
#' \code{typedef struct \link{SEXPREC} *SEXP;}
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-release/R-ints.html#SEXPs}
#'
#' @seealso
#' [SEXPREC]
#'
#' @name SEXP
NULL