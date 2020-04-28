#' SEXPREC_HEADER
#'
#' @description
#'
#' ![](mobj.svg "macro object-like") ![](USE_RINTERNALS.svg "requires USE_RINTERNALS")
#'
#' SEXPREC_HEADER is a macro comprising the declaration of four objects:
#'   * `struct `[sxpinfo_struct]` sxpinfo`
#'   * `struct `[SEXPREC]` *attrib`
#'   * `struct `[SEXPREC]` *gengc_next_node`
#'   * `struct `[SEXPREC]` *gengc_prev_node`
#'
#' SEXPREC_HEADER is used in the declaration of [SEXPREC].
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