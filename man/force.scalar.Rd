\name{force.scalar}
\alias{force.scalar}
\title{Force argument to be a numeric type with length one}
\usage{
  force.scalar(x, default = 1, min = -10^10, max = 10^10)
}
\arguments{
  \item{x}{the object to ensure is a scalar}

  \item{default}{the value to revert to if the format of x
  is illegal}

  \item{min}{a lower bound for the output, anything below
  this is set to min}

  \item{max}{an upper bound for the output, anything above
  this is set to max}
}
\value{
  the object x if already legal, first element if a vector,
  the min or max value if x is outside the specified
  bounds, or the value of default otherwise
}
\description{
  Sometimes arguments must be numeric, scalar and within a
  certain range. Rather than using many if statements, this
  will do everything possible to coerce input to a scalar,
  failing that will replace with a default value. Can also
  provide a maximum and minimum range that the result must
  lie within.
}
\examples{
force.scalar(1.5)
force.scalar(NULL,default=.5)
force.scalar(NA,default=.4,min=5,max=10) # default is outside range!
force.scalar(rnorm(1000))
force.scalar(101,max=50)
force.scalar(list(0.4,1,2,3,4,"test"))
force.scalar(data.frame(test=c(1,2,3),name=c("test","me","few")))
force.scalar(Inf)
}
\seealso{
  \code{\link{force.percentage}}
}

