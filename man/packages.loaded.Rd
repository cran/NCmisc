\name{packages.loaded}
\alias{packages.loaded}
\title{Check whether a set of packages has been loaded}
\usage{
  packages.loaded(pcks = "", ..., cran.check = TRUE,
    repos = NULL)
}
\arguments{
  \item{pcks}{character, a package name, or vector of
  names, if left blank will return all loaded}

  \item{...}{further package names as character (same as
  entering via pcks, but avoids need for c() in pcks)}

  \item{cran.check}{logical, in the case at least one
  package is not found, whether to search CRAN and see
  whether the package(s) even exist on CRAN.}

  \item{repos}{repository to use if package is not loaded
  and cran.check=TRUE, if NULL, will attempt to use the
  repository in getOptions("repos") or will default to the
  imperial.ac.uk mirror.}
}
\value{
  logical TRUE or FALSE whether the whole list of packages
  are available
}
\description{
  Returns TRUE if the whole set of packages entered has
  been loaded, or FALSE otherwise. This can be useful when
  developing a package where there is optional
  functionality depending if another package is in use (but
  the other package is not part of 'depends' because it is
  not essential). Because 'require' cannot be used within
  functions submitted as part of a CRAN package.
}
\examples{
repos <- "http://cran.ma.imperial.ac.uk/"
packages.loaded("NCmisc","reader",repos=repos)
packages.loaded(c("bigmisc","nonsenseFailTxt"),repos=repos)
packages.loaded(c("bigmisc","nonsenseFailTxt"),cran.check=FALSE)
packages.loaded() # no argument means all loaded packages are listed
}
\author{
  Nicholas Cooper
}

