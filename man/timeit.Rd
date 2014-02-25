\name{timeit}
\alias{timeit}
\title{Times an expression, with breakdown of time spent in each function}
\usage{
  timeit(expr, suppressResult = F, total.time = TRUE)
}
\arguments{
  \item{expr}{an expression, must take at least 1 second
  (roughly)}

  \item{suppressResult}{logical, if true, will return
  timing information rather than the result of expr}

  \item{total.time}{to sort by total.time, else by
  self.time}
}
\value{
  returns matrix where rows are function names, and columns
  are self.time and total.time. total.time is total time
  spent in that function, including function calls made by
  that function.  self.time doesn't count other functions
  within a function
}
\description{
  A wrapper for the proftools package Rprof() function. It
  is to Rprof() as system.time() is to proc.time() (base)
  Useful for identifying which functions are taking the
  most time. This procedure will return an error unless
  expr takes more than ~0.1 seconds to evaluate. I could
  not see any simple way to avoid this limitation.
}
\examples{
# this function writes and removes a temporary file
# run only if ok to do this in your working directory
#not run# timeit(wait(0.1,"s") ,total.time=TRUE)
#not run# timeit(wait(0.1,"s") ,total.time=FALSE)
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

