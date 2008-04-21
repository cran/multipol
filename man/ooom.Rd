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
  think about it is to observe
  that~\eqn{(1+x+x^2+\ldots+x^n)(1-x)=1-x^{n-1}}{(1+x^2+...+x^n)*(1-x)=1-x^(n+1)}.

  Argument \code{n} specifies how many terms of the series to take.
  
  The function uses an efficient array method when \code{x} has only a single
  non-zero entry.  In other cases, a variant of Horner's method is
  used. 
}
\seealso{\code{\link{taylor}}}
\author{Robin K. S. Hankin}
\examples{
ooom(4,homog(3,1))
}
\keyword{array}

