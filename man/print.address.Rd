% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/address.R
\name{print.address}
\alias{print.address}
\title{Print an address object}
\usage{
\method{print}{address}(x, ...)
}
\arguments{
\item{x}{An \code{address} object.}

\item{...}{Further arguments passed to or from other methods.}
}
\description{
If display name is specifed as "Last, First" then the display name will be
quoted.
}
\examples{
gerry <- as.address("gerry@gmail.com")
print(gerry)
}
