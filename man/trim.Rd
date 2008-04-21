\name{trim}
\alias{trim}
\alias{taylor}
\title{Remove redundant entries from a multipol}
\description{
  Remove redundant entries from a multivariate polynomial: function
  \code{trim()} trims the array of non-significant zeroes as far as
  possible without altering its value as a multipol; function
  \code{taylor()} returns the multivariate Taylor expansion to a
  specified order.
}
\usage{
trim(a)
taylor(a,maxorder=NULL)
}
\arguments{
  \item{a}{A multipol}
  \item{maxorder}{The multivariate order of the expansion returned;
    default of \code{NULL} means to return \code{a} unaltered}
}
\value{
  Returns a multipol
}
\author{Robin K. S. Hankin}
\note{
  If \code{a} is a zero multipol (that is, a multivariate polynomial
with all entries zero) of any size, then \code{trim(a)} is a zero
multipol of the same arity as \code{a} but with extent 1 in each
direction.
}
\seealso{\code{\link{Ops.multipol}}}
\examples{
a <- matrix(0,7,7)
a[1:3,1:4] <- 1:12
a <- as.multipol(a)
a
trim(a)
taylor(a,2)
}
\keyword{array}
