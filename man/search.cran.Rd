\name{search.cran}
\alias{search.cran}
\title{Search all CRAN packages for those containing keyword(s).}
\usage{
  search.cran(txt, repos = "")
}
\arguments{
  \item{txt}{text to search for, a character vector, not
  case-sensitive}

  \item{repos}{repository (CRAN mirror) to use, "" defaults
  to getOption("repos")}
}
\value{
  list of hits for each keyword (txt)
}
\description{
  Can be useful for trying to find new packages for a
  particular purpose. No need for these packages to be
  installed or loaded. Further searching can be done using
  utils::RSiteSearch()
}
\examples{
rep <- "http://cran.ma.imperial.ac.uk/" # OR: rep <- getOption("repos")
search.cran("useful",rep)
search.cran(c("hmm","markov","hidden"),repos=rep)
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

