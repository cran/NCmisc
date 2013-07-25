\name{loop.tracker}
\alias{loop.tracker}
\title{Creates a progess bar within a loop}
\usage{
  loop.tracker(cc, max, st.time = NULL, sav.obj = NULL,
    sav.fn = NA, sav.freq = 10, unit = c("m", "s", "h")[1])
}
\arguments{
  \item{cc}{integer, current value of the loop counter}

  \item{max}{integer, final value of the loop counter}

  \item{st.time}{'start time' when using 'time to go' mode,
  taken from a call to proc.time()}

  \item{sav.obj}{optionally an object to backup during the
  course of a very long loop, to restore in the event of a
  crash.}

  \item{sav.fn}{the file name to save 'save.obj'}

  \item{sav.freq}{how often to update 'sav.obj' to file, in
  terms of percentage of run-time}

  \item{unit}{time units h/m/s if using 'time to go' mode}
}
\value{
  returns nothing, simply prints progress to the console
}
\description{
  Only requires a single line within a loop to run, in
  contrast with the built-in tracker which requires a line
  to initialise, and a line to close. Also has option to
  backup objects during long loops. Ideal for a loop with a
  counter such as a for loop. Tracks progress as either
  percentage of time remaining or by intermittently
  displaying the estimated number of minutes to go
}
\examples{
# simple example with a for-loop
max <- 100; for (cc in 1:max) { loop.tracker(cc,max); wait(0.004,"s") }
#example using the 'time to go' with a while loop
cc <- 0; max <- 10; start <- proc.time()
while(cc < max) { cc <- cc + 1; wait(0.05,"s"); loop.tracker(cc,max,start,unit="s") }
# example with saving an object, and restoring after a crash
X <- matrix(rnorm(5000),nrow=50); max <- nrow(X); sums <- numeric(max)
for (cc in 1:max) {
  sums[cc] <- sum(X[cc,])
  wait(.1) # just so this trivial loop doesn't finish so quickly
  loop.tracker(cc,max, sav.obj=sums, sav.fn="temp.rda", sav.freq=5);
  if(cc==29) { warning("faked a crash at iteration 29!"); rm(sums); break }
}
cat("\\nloaded latest backup from iteration 28:",paste(load("temp.rda")),"\\n")
print(sav.obj); unlink("temp.rda")
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

