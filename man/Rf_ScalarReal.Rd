% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rf_ScalarReal.R
\name{Rf_ScalarReal}
\alias{Rf_ScalarReal}
\alias{ScalarReal}
\title{Rf_ScalarReal}
\arguments{
\item{x}{a double}
}
\value{
A SEXP object, namely a length one \code{numeric} vector.
}
\description{
\Sexpr[results=rd, stage=render]{c3po:::badge('fnp')} \Sexpr[results=rd, stage=render]{c3po:::badge('c2r')} \Sexpr[results=rd, stage=render]{c3po:::badge('prot')}

Converts a \code{double x} to a \link{SEXP} object that represents an R length one
\code{numeric} vector.
}
\section{Declaration}{
\preformatted{SEXP Rf_ScalarReal(double x);
}

In \href{https://github.com/wch/r-source/blob/trunk/src/include/Rinternals.h}{Rinternals.h}.
}

\examples{
# Convert a C double number as an R length one numeric vector
forty_two <- inline::cfunction(NULL,
 ' double x = 42.;
   SEXP y;
   y = PROTECT(Rf_ScalarReal(x));
   UNPROTECT(1);
   return y;
 ')
forty_two()


}
