\name{Header}
\alias{Header}
\title{Print heading text with a border.}
\usage{
  Header(txt, h = "=", v = h, corner = h, align = "center")
}
\arguments{
  \item{txt}{The text to display in the centre}

  \item{h}{the ascii character to use on the horizontal
  sections of the border, and used for v,corner too if not
  specified separately}

  \item{v}{the character to use on vertical sections of the
  border}

  \item{corner}{the character to use on corner sections of
  the border}

  \item{align}{alignment of the writing, when there are
  multiple lines, e.g, "right", "left", "centre"/"center"}
}
\value{
  returns nothing, simply prints the heading to the console
}
\description{
  Makes highly visible headings, can separately horizontal,
  vertical and corner characters
}
\examples{
Header("Section 1")
Header("Section 1",h="-",v="|",corner="*")
Header(c("SPACE","The final frontier"))
Header(c("MY SCRIPT","Part 1"),align="left",h=".")
}
\author{
  Nicholas Cooper \email{nick.cooper@cimr.cam.ac.uk}
}

