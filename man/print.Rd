\name{print.multipol}
\alias{print.multipol}
\alias{do_dimnames}
\alias{as.character}
\alias{as.character.multipol}
\title{Print method for multipols}
\description{
  Print methods for multipols
}
\usage{
\method{print}{multipol}(x, ...)
do_dimnames(a, include.square.brackets = getOption("isb"), varname =
getOption("varname"), xyz = getOption("xyz"))
\method{as.character}{multipol}(x, ..., xyz = getOption("xyz"), varname =
getOption("varname"))
}
\arguments{
  \item{a,x}{Multipol or array}
    \item{include.square.brackets}{Boolean with \code{TRUE} meaning to,
    er, include square brackets in the dimnames (eg \code{[x3]^5}) and
    default \code{FALSE} meaning to omit them (eg \code{x3^5})}
  \item{varname}{String to describe root variable name (eg
    \code{varname="y"} gives \code{y3^5} or \code{[y3]^5})}
  \item{xyz}{Boolean with default \code{TRUE} meaning to represent
    multipols of dimension \eqn{d\leq 3}{d <= 3} using   \code{x},
    \code{y}, and \code{z} for the  variable names and \code{FALSE}
    meaning to use \code{x1}, \code{x2}, \code{x3}.  This option is
    ignored if \eqn{d>3}; see examples section}
  \item{...}{Further arguments (currently ignored)}
}
\details{
  The default behaviour of \code{do_dimnames()} and
\code{as.character()}, and hence the print method for multipols, may be
modified by using the \code{options()} function.  See examples section
below.
}
\author{Robin K. S. Hankin}
\examples{

ones(2,5)

options("showchars" = TRUE)
ones(2,5)

options("xyz" = FALSE)
ones(2,5)

}
\keyword{array}
