\name{as.function.multipol}
\alias{as.function.multipol}
\alias{as_function_multipol}
\alias{as_function_multipol_vector}
\title{Coerce a multipol to a function}
\description{
Coerce a multipol to a function using environments
}
\usage{
\method{as.function}{multipol}(x, ...)
}
\arguments{
  \item{x}{A multipol}
  \item{\dots}{Further arguments, currently ignored}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{as.multipol}}}
\examples{
a <- as.multipol(array (1:12, c(2,3,2)))

f1 <- as.function(a)
f2 <- as.function(a*a)

x <- matrix(rnorm(15),ncol=3)

f1(x)^2 - f2(x)   #should be zero  [non-trivial!]
}
\keyword{array}
