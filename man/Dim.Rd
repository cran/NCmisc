% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{Dim}
\alias{Dim}
\title{A more general dimension function}
\usage{
Dim(x, cat.lists = TRUE)
}
\arguments{
\item{x}{the object to find the dimension for}

\item{cat.lists}{logical, for lists, TRUE will concatenate the dimesions to a single string,
or FALSE will return the sizes as a list of the same structure as the original.}
}
\value{
dimension(s) of the object
}
\description{
A more general 'dim' function. For arrays simply calls the dim() function, but for other data types, tries to
provide an equivalent, for instance will call length(x) for vectors, and will
recursively report dims for lists, and will attempt something sensible for other datatypes.
}
\examples{
# create variables of different types to show output styles #
Dim(193)
Dim(1:10)
testvar <- matrix(rnorm(100),nrow=25)
Dim(matrix(rnorm(100),nrow=25))
Dim(list(first="test",second=testvar,third=100:110))
Dim(list(first="test",second=testvar,third=100:110),FALSE)
}
\seealso{
\code{\link{prv}}, \code{\link{preview}}
}
