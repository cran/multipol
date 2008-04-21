\name{multipol}
\alias{as.multipol}
\alias{is.multipol}
\alias{multipol}
\title{Coerce and test for multipols}
\description{
  Coerce and test for multipols
}
\usage{
multipol(x)
as.multipol(x)
is.multipol(x)
}
\arguments{
  \item{x}{Object to be coerced to multipol}
}
\details{
  The usual case is to coerce an array to a multipol.  A character
  string may be given to \code{as.multipol()}, which will attempt to
  coerce to a multipol.
}
\author{Robin K. S. Hankin}
\note{
Subsets of a multipol are accessed and set using \pkg{Oarray}-style
extraction with an offset of zero.
}
\seealso{\code{\link{extract.multipol}}}
\examples{
a <- as.multipol(array(1:12,c(2,3,2)))
}
\keyword{array}
