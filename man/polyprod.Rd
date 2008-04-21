\name{polyprod}
\alias{polyprod}
\title{Multivariate polynomial product}
\description{
Gives an generalized outer product of two multipols
}
\usage{
polyprod(m1, m2, overlap = 0)
}
\arguments{
  \item{m1,m2}{multipols to be combined}
  \item{overlap}{Integer indicating how many variables are common to
    \code{m1} and \code{m2}; default of zero corresponds to no variables
    in common}
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{Ops.multipol}}}
\examples{
a <- as.multipol(matrix(1,2,2))     # 1+x+y+xy

polyprod(a,a)       # (1+x+y+xy)*(1+z+t+zt)   --- offset=0
polyprod(a,a,1)     # (1+x+y+xy)*(1+y+z+yz)
polyprod(a,a,2)     # (1+x+y+xy)^2

}
\keyword{array}
