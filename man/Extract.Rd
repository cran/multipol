\name{Extract.multipol}
\alias{Extract.multipol}
\alias{extract.multipol}
\alias{[.multipol}
\alias{[<-.multipol}
\title{Extract or Replace Parts of a multipol}
\description{
  Extract or replace subsets of multipols
}
\usage{
          \method{[}{multipol}(x, \dots)
          \method{[}{multipol}(x, \ldots) <- value
 }
\arguments{
  \item{x}{A multipol}
  \item{...}{Indices to replace. \strong{Offset zero! See details section}}
  \item{value}{replacement value}
}
\details{

  Extraction and replacement operate with offset zero (using functions
  taken from the \pkg{Oarray} package); see the examples section.  This
  is so that the index matches the power required (there is an
  off-by-one issue.  The \emph{first} element corresponds to the
  \emph{zeroth} power.  One wants index \code{i} to extract/replace the
  \eqn{i}-th power and in particular one wants index \code{0} to
  extract/replace the zeroth power).
  
  Replacement operators return a multipol.  Extraction returns an array.
  This is because it is often not clear exactly what multipol is desired
  from an extraction operation (it is also consistent with
  \pkg{Oarray}'s behaviour).
}
\author{Original code taken from the Oarray package by Jonty Rougier}
\references{
  Jonathan Rougier (2007). Oarray: Arrays with arbitrary offsets. R package version 1.4-2.
}
\examples{
a <- as.multipol(matrix(1,4,6))
a[2,2] <- 100
a                  # coefficient of x1^2.x2^2 is 100

a[1:2,1:2]         # a matrix.  Note this corresponds to first and second powers
                   # not zeroth and first (what multipol would you want here?)

a[2,2]             # 100 to match the "a[2,2] <- 100" assignment above
}
\keyword{array}
