\name{is.constant}
\alias{is.constant}
\alias{is.zero}
\title{Is a multivariate polynomial constant or zero?}
\description{
  Is a multivariate polynomial constant or zero?
}
\usage{
is.constant(a, allow.untrimmed = TRUE)
is.zero(a, allow.untrimmed = TRUE)
}
\arguments{
  \item{a}{A multipol}
  \item{allow.untrimmed}{Boolean with default \code{TRUE} meaning to
    allow a multipol to be zero/constant even if one or more array
    extents exceed 2}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{constant}}}
\examples{
is.zero(linear(c(1,1i))*linear(c(1,-1i)) - ones(2,2))  # factorize x^2+y^2
}
\keyword{array}
