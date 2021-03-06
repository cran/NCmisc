% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{toheader}
\alias{toheader}
\title{Return a string with each first letter of each word in upper case.}
\usage{
toheader(txt, strict = FALSE)
}
\arguments{
\item{txt}{a character string}

\item{strict}{whether to force non-leading letters to lowercase}
}
\value{
Vector minus NA's, or the matrix/data.frame minus NA rows
}
\description{
Return a string with each first letter of each word in upper case.
}
\examples{
toheader(c("using AIC for model selection"))
toheader(c("using AIC", "for MODEL selection"), strict=TRUE)
}
\author{
via R Core
}
