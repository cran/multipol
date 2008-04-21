\name{as.array}
\alias{as.array}
\alias{as.array.multipol}
\alias{as.array.default}
\title{Coerce multipols to arrays}
\description{
  Coerce multipols to arrays; unclass
}
\usage{
\method{as.array}{multipol}(x, ...)
}
\arguments{
  \item{x}{multipol}
  \item{...}{Further arguments passed to \code{NextMethod()}}
}
\author{Robin K. S. Hankin}
\examples{
a <- as.multipol(matrix(1,2,2))
as.array(a)
}
\keyword{array}
