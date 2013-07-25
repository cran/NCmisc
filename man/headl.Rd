\name{headl}
\alias{headl}
\title{A good way to preview large lists.}
\usage{
  headl(x, n = 6, skip = 20, skip2 = 10, ind = "",
    ind2 = "  ")
}
\arguments{
  \item{x}{a list to preview}

  \item{n}{The number of values to display for the deepest
  nodes of the list}

  \item{skip}{number of first level elements to display
  before skipping the remainder}

  \item{skip2}{number of subsequent level elements to
  display before skipping the remainder}

  \item{ind}{indent character for first level elements}

  \item{ind2}{indent character for subsequent level
  elements}
}
\value{
  prints truncated preview of a large list
}
\description{
  An alternative to head(list) which allows limiting of
  large list components in the console display
}
\examples{
sub1 <- list(list(1:100),list(2:101),list(101:200),list(201:300),list(301:400))
big.list <- list(sub1,sub1,sub1,sub1,sub1,sub1)
headl(sub1)
headl(big.list,skip=2)
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

