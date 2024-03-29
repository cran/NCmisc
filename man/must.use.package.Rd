% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{must.use.package}
\alias{must.use.package}
\title{Do everything possible to load an R package.}
\usage{
must.use.package(
  pcknms,
  ask = FALSE,
  reload = FALSE,
  avail = FALSE,
  quietly = FALSE
)
}
\arguments{
\item{pcknms}{list of packages to load/install}

\item{ask}{whether to get the user's permission to install a
required package, or just go ahead and do it}

\item{reload}{indicates to reload the package even if loaded}

\item{avail}{see whether pcknms are in the list
of available CRAN packages}

\item{quietly}{passed to library/require, display installation
text or not}
}
\value{
nothing, simply loads the packages specified if possible
}
\description{
Like 'require()' except it will attempt to install a package if
necessary. Installation of bioconductor packages is deprecated.
Useful if you wish to share code with people who
may not have the same libraries as you, you can include a call to
this function which will simply load the library if present, or
else install, then load, if they do not have it.
}
\examples{
# not run : run if you are ok to install/already have these packages
# must.use.package(c("MASS","nlme","lme4"),ask=FALSE)
# search() # show packages have loaded, then detach them again:
# sapply(paste("package",c("MASS","nlme","lme4"),sep=":"),detach,character.only=TRUE)
}
\author{
Nicholas Cooper \email{njcooper@gmx.co.uk}
}
