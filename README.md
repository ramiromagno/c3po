
<!-- README.md is generated from README.Rmd. Please edit that file -->

# c3po <img src='man/figures/logo.svg' align="right" height="139" />

<!-- badges: start -->

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/ramiromagno/c3po.svg?branch=master)](https://travis-ci.org/ramiromagno/c3po)
<!-- badges: end -->

c3po is a documentation-only package for the journey from R to C and
back again. Please note this is still a very much work in progress.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("ramiromagno/c3po")
```

## Usage

Browse the online documentation: <https://rmagno.eu/c3po>.

## Help

Help is emphatically appreciated\! This package is at its infancy still,
so if you feel like you can help documenting R’s C API, please do. I
will be glad to accept pull requests.

## References

These are the sources I have been using to write this documentation.

  - R’s source code: <https://github.com/wch/r-source/>
  - Writing R Extensions:
    <https://cran.r-project.org/doc/manuals/r-release/R-exts.html>
  - R Internals:
    <https://cran.r-project.org/doc/manuals/r-release/R-ints.html>
  - Hadley’s Advanced R 1st edition:
    <http://adv-r.had.co.nz/C-interface.html>
  - Hadley’s R packages: <https://r-pkgs.org/src.html#clang>
  - Hadley’s notes on R internals:
    <https://github.com/hadley/r-internals>
  - Lukas Stadler’s documentation for the R native API header files:
    <https://lukasstadler.github.io/RAPI/html/index.html>
  - Native API stats of Rinternals.h without USE R INTERNALS:
    <https://wiki.r-consortium.org/view/Native_API_stats_of_Rinternals.h_without_USE_R_INTERNALS>
  - The GNU C Reference Manual:
    <https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html>
  - Tomas Kalibera: Common PROTECT Errors:
    <https://developer.r-project.org/Blog/public/2019/04/18/common-protect-errors/>
  - The danger of PROTECT errors:
    <https://github.com/kalibera/cran-checks/blob/master/rchk/PROTECT.md>
  - C source code from the rlang package:
    <https://github.com/tidyverse/rlang>
  - Using R — Packaging a C library in 15 minutes:
    <http://mazamascience.com/WorkingWithData/?p=1151>
