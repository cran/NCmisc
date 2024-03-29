% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{summary2}
\alias{summary2}
\title{Descriptive summary with SD/SE + improved formatting}
\usage{
summary2(x, digits = NULL, neaten.names = TRUE)
}
\arguments{
\item{x}{vector of numeric data}

\item{digits}{number of digits to round resulting values to}

\item{neaten.names}{logical, TRUE removes period and space from names
of the results returned by summary() to make the names better for
use in a data.frame.}
}
\value{
array of descriptive statistics for x
}
\description{
Wrapper for the base function summary() but adds standard deviation,
standard error, and an 'N' and missing 'NA' count that are consistent.
}
\examples{
x <- 1:100
summary2(x, digits=2)
summary2(c(x, NA, NA), digits=2)
}
\author{
Nicholas Cooper \email{njcooper@gmx.co.uk}
}
