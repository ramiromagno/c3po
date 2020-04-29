#' SEXPREC_HEADER
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('mobj')} \Sexpr[results=rd, stage=render]{c3po:::badge('USE_RINTERNALS')}
#'
#' SEXPREC_HEADER is a macro comprising the declaration of four objects:
#'   - \code{struct \link{sxpinfo_struct} sxpinfo}
#'   - \code{struct \link{SEXPREC} *attrib}
#'   - \code{struct \link{SEXPREC} *gengc_next_node}
#'   - \code{struct \link{SEXPREC} *gengc_prev_node}
#'
#' SEXPREC_HEADER is used in the declaration of \link{SEXPREC}.
#'
#' @section Declaration:
#' ```
#' #define SEXPREC_HEADER \
#'     struct sxpinfo_struct sxpinfo; \
#'     struct SEXPREC *attrib; \
#'     struct SEXPREC *gengc_next_node, *gengc_prev_node;
#' ```
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @seealso
#' [SEXPREC],
#' [sxpinfo_struct]
#'
#' @name SEXPREC_HEADER
NULL