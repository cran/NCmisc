% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{search.cran}
\alias{search.cran}
\title{Search all CRAN packages for those containing keyword(s).}
\usage{
search.cran(txt, repos = "", all.repos = FALSE)
}
\arguments{
\item{txt}{text to search for, a character vector, not case-sensitive}

\item{repos}{repository(s) (CRAN mirror) to use, "" defaults to getOption("repos")}

\item{all.repos}{logical, if TRUE, then use all available repositories from getRepositories()}
}
\value{
list of hits for each keyword (txt)
}
\description{
Can be useful for trying to find new packages for a particular
purpose. No need for these packages to be installed or loaded.
Further searching can be done using utils::RSiteSearch()
}
\examples{
## not run # repos <- "http://cran.ma.imperial.ac.uk/" # OR: repos <- getOption("repos")
## not run # search.cran("draw")
## not run # search.cran(c("hmm", "markov", "hidden"))
}
\author{
Nicholas Cooper \email{njcooper@gmx.co.uk}
}
