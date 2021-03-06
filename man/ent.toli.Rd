% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ROGUE.R
\name{ent.toli}
\alias{ent.toli}
\title{Remove outlier cells when calculating ROGUE}
\usage{
ent.toli(ent, expr, n = 2, span = 0.5, r = 1, mt.method = c("fdr","BH"))
}
\arguments{
\item{ent}{A tibble object returned from the SE_fun or entropy_fit function.}

\item{expr}{The expression matrix. Rows should be genes and columns should be cells.}

\item{n}{Remove this many outlier cells.}

\item{span}{The parameter α which controls the degree of smoothing.}

\item{r}{A small fixed value to avoid log(0) of mean gene expression levels. The default value of r is set to 1, but can also be set to other values such as 0.1 and 0.01.}

\item{mt.method}{The multiple testing method used in p.adjust.}
}
\value{
A tibble object with seven columns as 'ent' object.
}
\description{
Remove outlier cells when calculating ROGUE
}
\examples{
ent.toli(ent.res, expr, n = 2, mt.method = "fdr")
}
