\name{pad.left}
\alias{pad.left}
\title{Print a vector with appropriate padding so each has equal char length.}
\usage{
  pad.left(X, char = " ", numdigits = NA)
}
\arguments{
  \item{X}{vector of data to pad to equal length}

  \item{char}{character to pad with, space is default, but
  zero might be a desirable choice for padding numbers}

  \item{numdigits}{if using numeric data, the number of
  digits to keep}
}
\value{
  returns the vector in character format with equal nchar()
}
\description{
  Print a vector with appropriate padding so each has equal
  char length.
}
\examples{
pad.left(1:10)
phone.numbers <- c("07429719234","7876345123","7123543765")
pad.left(phone.numbers,"0")
pad.left(rnorm(10),numdigits=3)
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

