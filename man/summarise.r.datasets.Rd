\name{summarise.r.datasets}
\alias{summarise.r.datasets}
\title{Summarise the dimensions and type of available R example datasets}
\usage{
  summarise.r.datasets(filter = FALSE,
    types = c("data.frame", "matrix"), all = FALSE, ...)
}
\arguments{
  \item{filter}{logical, whether to filter datasets by
  'types'}

  \item{types}{if filter=TRUE, which data types to include
  in the result}

  \item{all}{logical, if all=TRUE, look for datasets in all
  available packages, else just base}

  \item{...}{if all is false, further arguments to the
  data() function to search datasets}
}
\description{
  This function will parse the current workspace to see
  what R datasets are available. Using the toHTML function
  from the tools package to interpret the data() call, each
  dataset is examined in turn for type and dimensionality.
  Can also use a filter for dataset types, to only show,
  for instance, matrix datasets. Also you can specify
  whether to only look for base datasets, or to search for
  datasets in all available packages. Result is a printout
  to the console of the available datasets and their
  characteristics.
}
\examples{
summarise.r.datasets()
summarise.r.datasets(filter=TRUE,"matrix")
}
\author{
  Nicholas Cooper
}

