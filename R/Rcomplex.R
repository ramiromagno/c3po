#' Rcomplex
#'
#' @description
#'
#' ![](typedef-str.svg "typedef struct")
#'
#' \code{Rcomplex} is a C struct that represents a complex number, and hence contains two members:
#' - \code{r}, the real part, a double number
#' - \code{i}, the imaginary part, a double number
#'
#' @section Declaration:
#' ```
#' typedef struct {
#'   double r;
#'   double i;
#' } Rcomplex;
#' ```
#' In [R_ext/Complex.h](https://github.com/wch/r-source/blob/trunk/src/include/R_ext/Complex.h).
#'
#'
#' @name Rcomplex
#'
NULL