% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{Z.to.p}
\alias{Z.to.p}
\title{Convert Z-scores to p-values}
\usage{
Z.to.p(Z, warn = FALSE)
}
\arguments{
\item{Z}{Z score, numeric, scalar, vector or matrix, or other types coercible
using as.numeric()}

\item{warn}{logical, whether to give a warning for very low p-values when
precision limits are exceeded.}
}
\value{
p-valuues with the same dimension as the input
}
\description{
Simple conversion of Z-scores to two-tailed p-values. Written
in a way that allows maximum precision for small p-values.
}
\examples{
Z.to.p("1.96")
Z.to.p(p.to.Z(0.0001))
Z.to.p(37, TRUE)
Z.to.p(39, TRUE) # maximum precision exceeded, warnings on
Z.to.p(39) # maximum precision exceeded, warnings off
}
\seealso{
\code{\link{p.to.Z}}
}
\author{
Nicholas Cooper \email{njcooper@gmx.co.uk}
}
