% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rcomplex.R
\name{Rcomplex}
\alias{Rcomplex}
\title{Rcomplex}
\description{
\Sexpr[results=rd, stage=render]{c3po:::badge('typedef-str')}

\code{Rcomplex} is a C struct that represents a complex number, and hence contains two members:
\itemize{
\item \code{r}, the real part, a double number
\item \code{i}, the imaginary part, a double number
}
}
\section{Declaration}{
\preformatted{typedef struct \{
  double r;
  double i;
\} Rcomplex;
}

In \href{https://github.com/wch/r-source/blob/trunk/src/include/R_ext/Complex.h}{R_ext/Complex.h}.
}

