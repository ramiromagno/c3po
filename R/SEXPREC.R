#' SEXPREC
#'
#' @description
#'
#' ![](typedef-str.svg "typedef struct") ![](USE_RINTERNALS.svg "requires USE_RINTERNALS")
#'
#' S-expression (SEXP) record (REC) structure, a C structure underlying every R
#' object. Accessible via a pointer of type \code{\link{SEXP}}.
#'
#' The SEXPREC is composed of 2 parts (5 struct members in total):
#' * Header, [SEXPREC_HEADER]:
#'   * `struct `[sxpinfo_struct]` sxpinfo`
#'   * `struct SEXPREC *attrib`
#'   * `struct SEXPREC *gengc_next_node`
#'   * `struct SEXPREC *gengc_prev_node`
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