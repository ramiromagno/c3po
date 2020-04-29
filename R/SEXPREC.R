#' SEXPREC
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('typedef-str')}\Sexpr[results=rd, stage=render]{c3po:::badge('USE_RINTERNALS')}
#'
#' S-expression (SEXP) record (REC) structure, a C structure underlying every R
#' object. Accessible via a pointer of type \code{\link{SEXP}}.
#'
#' The SEXPREC is composed of two parts (five struct members in total):
#' - Header, \code{\link{SEXPREC_HEADER}}:
#'   - \code{struct \link{sxpinfo_struct} sxpinfo}
#'   - \code{struct SEXPREC *attrib}
#'   - \code{struct SEXPREC *gengc_next_node}
#'   - \code{struct SEXPREC *gengc_prev_node}
#' * Node data, `u`.
#'
#' @section Declaration:
#' ```
#' typedef struct SEXPREC {
#'     SEXPREC_HEADER;
#'     union {
#'   struct primsxp_struct primsxp;
#'   struct symsxp_struct symsxp;
#'   struct listsxp_struct listsxp;
#'   struct envsxp_struct envsxp;
#'   struct closxp_struct closxp;
#'   struct promsxp_struct promsxp;
#'     } u;
#' } SEXPREC;
#' ```
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @references \url{https://cran.r-project.org/doc/manuals/r-patched/R-ints.html#The-_0027data_0027}
#' @seealso
#' [SEXP]
#'
#' @name SEXPREC
NULL