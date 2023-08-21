\name{multipol-package}
\alias{multipol-package}
\docType{package}
\title{Multivariate polynomials}
\description{
Various tools to manipulate and combine multivariate polynomials
}
\details{

Multidimensional arrays are interpreted in a natural way as multivariate
polynomials.

Taking a matrix \code{a} as an example, because this has two dimensions
it may be viewed as a bivariate polynomial with \code{a[i,j]} being the
coefficient of \eqn{x^iy^j}{x^i.y^j}.  Note the off-by-one issue; see
\code{?Extract}.

Multivariate polynomials of arbitrary arity are a straightforward
generalization using appropriately dimensioned arrays.

Arithmetic operations \dQuote{\code{+}},\dQuote{\code{-}},
\dQuote{\code{*}}, \dQuote{\code{^}} operate as though their arguments
are multivariate polynomials.

Even quite small multipols are computationally intense; many
coefficients have to be calculated and each is the sum of many terms.

The package is almost completely superceded by the \CRANpkg{spray} and
\CRANpkg{mvp} packages, which use a sparse array system for efficiency.

}
\author{
  \packageAuthor{multipol}

Maintainer: \packageMaintainer{multipol}
}

\examples{

ones(2)*linear(c(1,-1))                             # x^2-y^2
ones(2)*(ones(2,2)-uni(2))                          # x^3+y^3


a <- as.multipol(matrix(1:12,3,4))
a

a[1,1] <- 11

f <- as.function(a*a)

f(c(1,pi))

}
\keyword{array}
