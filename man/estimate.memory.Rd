\name{estimate.memory}
\alias{estimate.memory}
\title{Estimate the memory required for an object.}
\usage{
  estimate.memory(dat)
}
\arguments{
  \item{dat}{either a matrix/dataframe, or else dims;
  c(nrow,ncol)}
}
\value{
  returns minimum memory requirement in GB (numeric,
  scalar)
}
\description{
  An existing object or just dim/length of a proposed
  object
}
\examples{
estimate.memory(matrix(rnorm(100),nrow=10))
estimate.memory(c(10^6,10^4))
estimate.memory(5.4*10^8)
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

