\name{Ops.multipol}
\alias{Ops.multipol}
\alias{mprod}
\alias{mplus}
\alias{mneg}
\alias{mps}
\alias{mpow}
\title{Arithmetic ops group methods for multipols}
\description{
  Allows arithmetic operators to be used for multivariate polynomials
  such as addition, multiplication, and integer powers.
}
\usage{
\method{Ops}{multipol}(e1, e2 = NULL)
mprod(...,  trim = TRUE , maxorder=NULL)
mplus(...,  trim = TRUE , maxorder=NULL)
 mneg(a,    trim = TRUE , maxorder=NULL)
  mps(a, b, trim = TRUE , maxorder=NULL)
 mpow(a, n, trim = TRUE , maxorder=NULL)
}
\arguments{
  \item{e1,e2,a}{Multipols; scalars coerced}
  \item{b}{Scalar}
  \item{n}{Integer power}
  \item{...}{Multipols}
  \item{trim}{Boolean, with default \code{TRUE} meaning to return a
    \code{trim()}-ed multipol and \code{FALSE} meaning not to trim}
  \item{maxorder}{Numeric vector indicating maximum orders of the output
    [that is, the highest power retained in the multivariate Taylor
    expansion about \code{rep(0,d)}].  Length-one input is recycled to
    length \code{d}; default value of \code{NULL} means to return the
    full result.  More details given under \code{taylor()}}
}
\details{
  The function \code{Ops.multipol()} passes unary and binary arithmetic
  operators (\dQuote{\code{+}}, \dQuote{\code{-}}, \dQuote{\code{*}}, and
  \dQuote{\code{^}}) to the appropriate specialist function.

  In \code{multipol.R}, these specialist functions all have formal names
  such as \code{.multipol.prod.scalar()} which follow a rigorous
  pattern; they are not intended for the end user.  They are not
  exported from the namespace as they begin with a dot.

  Five conveniently-named functions are provided in the package for the
  end-user; these offer greater control than the arithmetic command-line
  operations in that arguments \code{trim} or \code{maxorder} may be
  set.  They are:

  \itemize{
    \item \code{mprod()} for products,
    \item \code{mplus()} for addition,
    \item \code{mneg()} for the negative,
    \item \code{mps()} for adding a scalar,
    \item \code{mpow()} for powers.
    }

  Addition and multiplication of multivariate polynomials is commutative
  and associative, to machine precision.
  
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{outer}},\code{\link{trim}},\code{\link{taylor}}}
\examples{
a <- as.multipol(matrix(1,4,5))
100+a

f <- as.function(a+1i)
f(5:6)


b <- as.multipol(array(rnorm(12),c(2,3,2)))

f1 <- as.function(b)
f2 <- as.function(b*b)
f3 <- as.function(b^3)    # could have said b*b*b

x <- c(1,pi,exp(1))

f1(x)^2 - f2(x)    #should be zero
f1(x)^3 - f3(x)    #should be zero

x1 <- as.multipol(matrix(1:10,ncol=2))
x2 <- as.multipol(matrix(1:10,nrow=2))
x1+x2

}
\keyword{array}
