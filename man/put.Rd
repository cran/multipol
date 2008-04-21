\name{put}
\alias{put}
\title{Substitute a value for a variable}
\description{
Substitute a value for a variable and return a multipol of arity
\code{d-1}
}
\usage{
put(a, i, value, keep = TRUE)
}
\arguments{
  \item{a}{multipol}
  \item{i}{Dimension to substitute}
  \item{value}{value to substitute for \code{x[i]}}
  \item{keep}{Boolean with default \code{TRUE} meaning to retain
    singleton dimensions and \code{FALSE} meaning to drop them}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{deriv.multipol}}}
\examples{

a <- as.multipol(matrix(1:12,3,4))
put(a,1,pi)
put(a,2,pi)

b <- as.multipol(array(1:12,c(3,2,3)))

put(b,2,pi,TRUE)
put(b,2,pi,FALSE)
}
\keyword{array}
