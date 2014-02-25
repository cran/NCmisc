\name{wait}
\alias{wait}
\title{Wait for a period of time.}
\usage{
  wait(dur, unit = "s", silent = TRUE)
}
\arguments{
  \item{dur}{waiting time}

  \item{unit}{time units h/m/s, seconds are the default}

  \item{silent}{print text showing that waiting is in
  progress}
}
\value{
  no return value
}
\description{
  Waits a number of hours minutes or seconds (doing
  nothing). This will use 100% of 1 cpu.
}
\examples{
wait(.25,silent=FALSE) # wait 0.25 seconds
wait(0.005, "m")
wait(0.0001, "Hours", silent=FALSE)
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

