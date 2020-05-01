#' Data type for coding of R data subtypes
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('typedef-dtype')} \Sexpr[results=rd, stage=render]{c3po:::badge('USE_RINTERNALS')}
#'
#' SEXPTYPE is an alias to an \code{unsigned int}. It is used to encode the type
#' of an R object that \code{\link{SEXPREC}} holds, namely in \code{struct
#' \link{sxpinfo_struct}}, where it works to declare the type of the struct
#' member \code{type}. To access the type of a \code{\link{SEXPREC}} you can use
#' \code{\link{TYPEOF}}.
#'
#' @section Declaration:
#' ```
#' typedef unsigned int SEXPTYPE;
#' ```
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @section SEXPTYPEs and \R objects:
#'
#' | \code{SEXPTYPE} (int) | \R object |
#' | --- | --- |
#' | \code{\link{NILSXP}} (0) | The null object in \R, see \code{\link{NULL}}. |
#' | \code{\link{SYMSXP}} (1) | Names and symbols, see \code{\link{name}}. |
#' | \code{\link{LISTSXP}} (2) | Lists of dotted pairs, see \code{\link{pairlist}}. |
#' | \code{\link{CLOSXP}} (3) | Functions, see \code{\link{closure}}. |
#' | \code{\link{ENVSXP}} (4) | Environments, see \code{\link{environment}}. |
#' | \code{\link{PROMSXP}} (5) | Promises, see \code{\link{promise}}. |
#' | \code{\link{LANGSXP}} (6) | Language objects are calls (including formulae), see \code{\link{call}} and \code{\link{formula}}. |
#' | \code{\link{SPECIALSXP}} (7) | Special forms. |
#' | \code{\link{BUILTINSXP}} (8) | Builtin non-special forms.  |
#' | \code{\link{CHARSXP}} (9) | "scalar" string type (internal only). |
#' | \code{\link{LGLSXP}} (10) | Logical vectors, see \code{\link{logical}}. |
#' | \code{\link{INTSXP}} (13) | Integer vectors, see \code{\link{integer}}. |
#' | \code{\link{REALSXP}} (14) | Double vectors, see \code{\link{double}}. |
#' | \code{\link{CPLXSXP}} (15) | Complex vectors, see \code{\link{complex}}. |
#' | \code{\link{STRSXP}} (16) | Character vectors, see \code{\link{character}}. |
#' | \code{\link{DOTSXP}} (17) | Dot-dot-dot object, \link[base]{dots}. |
#' | \code{\link{ANYSXP}} (18) | Make "any" args work. |
#' | \code{\link{VECSXP}} (19) | Generic vectors, i.e. lists, see \code{\link{list}}. |
#' | \code{\link{EXPRSXP}} (20) | Expressions vectors, see \code{\link{expression}}. |
#' | \code{\link{BCODESXP}} (21) | Byte code. |
#' | \code{\link{EXTPTRSXP}} (22) | External pointer. |
#' | \code{\link{WEAKREFSXP}} (23) | Weak reference |
#' | \code{\link{RAWSXP}} (24) | Raw bytes, see \code{\link{raw}}. |
#' | \code{\link{S4SXP}} (25) | S4, non-vector, see S4 \code{\link[methods]{Introduction}}. |
#' | \code{\link{NEWSXP}} (30) | Fresh node created in new page. |
#' | \code{\link{FREESXP}} (31) | Node released by GC. |
#' | \code{\link{FUNSXP}} (99) |  Pseudo-type lumping closure, builtin and special. |
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#' @seealso
#' [TYPEOF],
#' [sxpinfo_struct],
#' [SEXP],
#' [SEXPREC]
#'
#' @name SEXPTYPE
NULL