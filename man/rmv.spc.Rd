% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{rmv.spc}
\alias{rmv.spc}
\title{Remove leading and trailing spaces (or other character).}
\usage{
rmv.spc(str, before = TRUE, after = TRUE, char = " ")
}
\arguments{
\item{str}{character vector, may containing leading or trailing chars}

\item{before}{logical, whether to remove leading spaces}

\item{after}{logical, whether to remove trailing spaces}

\item{char}{an alternative character to be removed instead of spaces}
}
\value{
returns vectors without the leading/trailing characters
}
\description{
Remove leading and trailing spaces (or other character).
}
\examples{
rmv.spc("  mid sentence  ")
rmv.spc("0012300",after=FALSE,char="0")
rmv.spc(" change nothing ",after=FALSE,before=FALSE)
}
\seealso{
\code{\link{spc}}
}
\author{
Nicholas Cooper \email{njcooper@gmx.co.uk}
}
