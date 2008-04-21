\name{deriv}
\alias{deriv}
\alias{deriv.multipol}
\title{Partial differentitation}
\description{
Partial differentiation with respect to any variable
}
\usage{
\method{deriv}{multipol}(expr, i, derivative = 1, ...)
}
\arguments{
  \item{expr}{A multipol}
  \item{i}{Dimension to differentiate with respect to}
  \item{derivative}{How many times to differentiate}
  \item{...}{Further arguments, currently ignored}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{substitute}}}
\examples{
a <- as.multipol(matrix(1:12,3,4))

deriv(a,1)     # standard usage: derivfferentiate WRT x1
deriv(a,2)     # differentiate WRT x2

deriv(a,1,2)   # second derivative
deriv(a,1,3)   # third derivative (zero multipol)
}
\keyword{array}
