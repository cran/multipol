\name{ooom}
\alias{ooom}
\title{One over one minus a multipol}
\description{
Uses Taylor's theorem to give one over one minus a multipol%'
}
\usage{
ooom(n, a, maxorder=NULL)
}
\arguments{
  \item{n}{The order of the approximation; see details}
  \item{a}{A multipol}
  \item{maxorder}{A vector of integers giving the maximum order as per
    \code{taylor()}} 
}
\details{

  The motivation for this function is the \emph{formal} power series
  \eqn{(1-x)^{-1}=1+x+x^2+\ldots}{1/(1-x)=1+x+x^2+...}.  The way to
  think about it is to observe that
  \eqn{(1+x+x^2+\ldots+x^n)(1-x)=1-x^{n-1}}{(1+x+x^2+...+x^n)*(1-x)=1-x^(n+1)},
  even if \eqn{x} is a multivariate polynomial (one needs only power
  associativity and a distributivity law, so this works for
  polynomials).  The right hand side is \eqn{1} if we neglect powers of
  \eqn{x} greater than the \eqn{n}-th, so the two terms on the left hand
  side are multiplicative inverses of one another.

  Argument \code{n} specifies how many terms of the series to take.
  
  The function uses an efficient array method when \code{x} has only a single
  non-zero entry.  In other cases, a variant of Horner's method is
  used. 
}
\seealso{\code{\link{taylor}}}
\author{Robin K. S. Hankin}
\references{
  I. J. Good 1976.  \dQuote{On the application of symmetric Dirichlet
  distributions and their mixtures to contingency tables}.  \emph{The
  Annals of Statistics}, volume 4, number 6, pp1159-1189; equation 5.6,
  p1166
  }
\examples{
ooom(4,homog(3,1))


# How many 2x2 contingency tables of nonnegative integers with rowsums =
# c(2,2) and colsums = c(2,2) are there?  Good gives:

(
  ooom(2,lone(4,c(1,3))) *
  ooom(2,lone(4,c(1,4))) *
  ooom(2,lone(4,c(2,3))) *
  ooom(2,lone(4,c(2,4))) 
)[2,2,2,2]
  
# easier to use the aylmer package:

\dontrun{
library(aylmer)
no.of.boards(matrix(1,2,2))
}

}
\keyword{array}
