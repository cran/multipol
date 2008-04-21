\name{constant}
\alias{constant}
\alias{homog}
\alias{linear}
\alias{single}
\alias{product}
\alias{zero}
\alias{ones}
\alias{uni}
\alias{lone}
\title{Various useful multivariate polynomials}
\description{
Various useful multivariate polynomials such as homogeneous polynomials,
linear polynomials, etc
}
\usage{
constant(d)
product(x)
homog(d, n = d, value = 1)
linear(x, power = 1)
lone(d,x)
single(d, e, power = 1)
uni(d)
zero(d)
}
\arguments{
  \item{d}{Integer giving the dimensionality (arity) of the result}
  \item{x}{A vector of integers}
  \item{n,e,power}{Integers}
  \item{value}{Value for linear multivariate polynomial}
}
\details{
In the following, all multipols have their nonzero entries 1 unless
otherwise stated.
  
  \itemize{
    \item Function \code{constant(d)} returns the constant multivariate
    polynomial of arity \code{d}

    \item Function \code{product(x)} returns a multipol of arity
    \code{length(x)} where \code{all(dim(product(x))==x)} with all zero
    entries except the one corresponding to \eqn{\prod_{i=1}^d
    {x_i}^{x[i]}}{xi^x[i]}
    \item Function \code{homog(d,n)} returns the homogeneous multipol of
    arity \code{d} and power \code{n}.  The coeffients are set to
    \code{value} (default 1); standard recycling is used
    \item Function \code{linear(x)} returns a multipol of arity
    \code{length(x)} which is linear in all its arguments and whose 
    coefficients are the elements of \code{x}.  Argument \code{power}
    returns an equivalent multipol linear in \code{x^power}
    \item Function \code{lone(d,x)} returns a multipol of arity \code{d}
    that is a product of variables \code{x[i]}
    \item Function \code{single(d,e,power)} returns a multipol of arity
    \code{d} with a single nonzero entry corresponding to dimension
    \code{e} raised to the power \code{power}
    \item Function \code{uni(d)} returns \code{x1*x2*...*xd} [it is a
    convenience wrapper for \code{product(rep(1,d))}]
    \item Function \code{zero(d)} returns the zero multipol of arity
    \code{d} [it is a convenience wrapper for \code{0*constant(d)}]
    \item Function \code{ones(d)} returns \code{x1+x2+...+xd} [it is a
    convenience wrapper for \code{linear(rep(1,d))}]
  }
}
\author{Robin K. S. Hankin}
\note{
In many ways, the functions documented in this section are an
    adverisement for the inefficiency of dealing with multipols using
    arrays: sparse arrays would be the natural solution.
  }
\seealso{\code{\link{outer}},\code{\link{product}},\code{\link{is.constant}}}
\examples{

product(c(1,2,5))     #   x * y^2 * z^5
uni(3)                #   xyz
single(3,1)           #   x
single(3,2)           #   y
single(3,3)           #   z
single(3,1,6)         #   x^6        
single(3,2,6)         #   y^6
lone(3,1:2)           #   xy
lone(3,c(1,3))        #   xz
linear(c(1,2,5))      #   x + 2y + 5z
ones(3)               #   x+y+z
constant(3)           #   1 + 0x + 0y + 0z
zero(3)               #   0 + 0x + 0y + 0z
homog(3,2)            #   x^2 + y^2 + z^2 + xy + xz + yz

# now some multivariate factorization:

ones(2)*linear(c(1,-1))                                       # x^2-y^2
ones(2)*(linear(c(1,1),2)-uni(2))                             # x^3+y^3
linear(c(1,-1))*homog(2,2)                                    # x^3+y^3 again
ones(2)*(ones(2,4)+uni(2)^2-product(c(1,3))-product(c(3,1)))  # x^5+y^5
ones(2)*homog(2,4,c(1,-1,1,-1,1))                             # x^5+y^5 again
  
}
\keyword{array}

