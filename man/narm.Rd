\name{narm}
\alias{narm}
\title{Return an object with missing values removed.}
\usage{
  narm(X)
}
\arguments{
  \item{X}{The object to remove NAs, any vector, matrix or
  data.frame}
}
\value{
  Vector minus NA's, or the matrix/data.frame minus NA rows
}
\description{
  Convenience function, removes NAs from most standard
  objects. Uses function na.exclude for matrices and
  dataframes. Main difference to na.exlude is that it
  simply performs the transformation, without adding
  attributes For unknown types, leaves unchanged with a
  warning.
}
\examples{
narm(c(1,2,4,NA,5))
DF <- data.frame(x = c(1, 2, 3), y = c(0, 10, NA))
DF; narm(DF)
# if a list, will only completely remove NA from the lowest levels
# empty places will be left at top levels
print(narm(list(1,2,3,NA,list(1,2,3,NA))))
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

