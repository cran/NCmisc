% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NCmisc.R
\name{file.split}
\alias{file.split}
\title{Split a text file into multiple parts}
\usage{
file.split(
  fn,
  size = 50000,
  same.dir = FALSE,
  verbose = TRUE,
  suf = "part",
  win = TRUE
)
}
\arguments{
\item{fn}{character, file name of the text file to split, if the file is an imcompatible format
the linux command should return an error message to the console}

\item{size}{integer, the maximum number of lines for the split parts of the file produced}

\item{same.dir}{logical, whether the resulting files should be moved to the same
directory as the original file, or simply left in the working directory [getwd()]}

\item{verbose}{logical, whether to report the resulting file names to the console}

\item{suf}{character, suffix for the split files, default is 'part', the original file
extension will be appended after this suffix}

\item{win}{logical, set to FALSE if running a standard windows setup (cmd.ext), and the file
split will run natively in R. Set to TRUE if you have a unix-alike command system, such as
CygWin, sh.exe, csh.exe, tsh.exe, running, and this will then check to see whether the POSIX
'split' command is present (this provides a speed advantage). If in doubt, windows users
can always set win=TRUE; the only case where this will cause an issue is if there is a
different command installed with the same name (i.e, 'split').}
}
\value{
returns the list of file names produced (including path)
}
\description{
Wrapper for the bash command 'split' that can separate a text file into multiple 
roughly equal sized parts. This function removes the need to remember syntax and
suffixes of the bash command
}
\examples{
orig.dir <- getwd(); setwd(tempdir()); # move to temporary dir
file.name <- "myfile.txt"
writeLines(fakeLines(max.lines=1000),con=file.name)
new.files <- file.split(file.name,size=50)
unlink(new.files); unlink(file.name)
setwd(orig.dir) # reset working dir to original
}
\author{
Nicholas Cooper
}
