#' struct sxpinfo_struct
#'
#' @description
#'
#' \Sexpr[results=rd, stage=render]{c3po:::badge('struct')} \Sexpr[results=rd, stage=render]{c3po:::badge('USE_RINTERNALS')}
#'
#' \code{struct sxpinfo_struct} is a struct of 13 members:
#'   * [SEXPTYPE]\code{ type}
#'   * `unsigned int scalar`
#'   * `unsigned int obj`
#'   * `unsigned int alt`
#'   * `unsigned int gp`
#'   * `unsigned int mark`
#'   * `unsigned int debug`
#'   * `unsigned int trace`
#'   * `unsigned int spare`
#'   * `unsigned int gcgen`
#'   * `unsigned int gccls`
#'   * `unsigned int named`
#'   * `unsigned int extra`
#'
#'
#' \code{struct sxpinfo_struct} is used in the definition of [SEXPREC_HEADER].
#'
#' @section Declaration:
#' ```
#' struct sxpinfo_struct {
#'   SEXPTYPE type      :  TYPE_BITS;
#'   /* ==> (FUNSXP == 99) %% 2^5 == 3 == CLOSXP
#'    * -> warning: `type' is narrower than values
#'    *              of its type
#'    * when SEXPTYPE was an enum */
#'   unsigned int scalar:  1;
#'   unsigned int obj   :  1;
#'   unsigned int alt   :  1;
#'   unsigned int gp    : 16;
#'   unsigned int mark  :  1;
#'   unsigned int debug :  1;
#'   unsigned int trace :  1;  /* functions and memory tracing */
#'   unsigned int spare :  1;  /* used on closures and when REFCNT is defined */
#'   unsigned int gcgen :  1;  /* old generation number */
#'   unsigned int gccls :  3;  /* node class */
#'   unsigned int named : NAMED_BITS;
#'   unsigned int extra : 32 - NAMED_BITS; /* used for immediate bindings */
#' }; /*     Tot: 64 */
#' ```
#'
#' In [Rinternals.h](https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h).
#'
#' @seealso
#' [SEXPTYPE],
#' [SEXPREC_HEADER],
#' [SEXPREC],
#'
#' @name sxpinfo_struct
NULL