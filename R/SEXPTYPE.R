#' SEXPTYPE
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('typedef-str')} \Sexpr[results=rd, stage=render]{c3po:::badge('USE_RINTERNALS')}
#'
#' SEXPTYPE is an alias to an \code{unsigned int}. It is used to encode the type
#' of R object that a SEXPREC holds, namely in \code{struct
#' \link{sxpinfo_struct}}, where it works to declare the type of the struct
#' member \code{type}.
#'
#' @section Declaration:
#' ```
#typedef unsigned int SEXPTYPE;
#' ```
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#SEXPTYPEs}
#' @seealso
#' [sxpinfo_struct],
#' [SEXP],
#' [SEXPREC]
#'
#' @name SEXPTYPE
NULL