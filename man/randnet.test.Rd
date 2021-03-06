% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randnet.test.R
\name{randnet.test}
\alias{randnet.test}
\title{Test Against Random Networks}
\usage{
randnet.test(..., iter, cores)
}
\arguments{
\item{...}{Matrices or data frames.
Semantic networks to be compared against random networks}

\item{iter}{Numeric.
Number of iterations in bootstrap.
Defaults to \code{1000}}

\item{cores}{Number of computer processing cores to use for bootstrapping samples.
Defaults to \emph{n} - 1 total number of cores.
Set to any number between 1 and maximum amount of cores on your computer}
}
\value{
Returns a matrix containing p-values
for the network measures of the input networks against
the distribution of equivalent random networks. The last
two columns contain the mean (\code{"M.rand"}) and
standard deviation (\code{"SD.rand"}) of the network measures
for the random network distribution
}
\description{
Performs significance tests for global measures
of semantic networks against the global measures of equivalent
size (and density) random networks
}
\examples{
# Get openness data
one <- open.clean[which(open.group == "Low"),]
two <- open.clean[which(open.group == "High"),]

\donttest{# Compute networks
net.one <- CN(one)
net.two <- CN(two)

# Perform random networks test
randnet.test(net.one, net.two, iter = 100, cores = 2)
}

}
\references{
Viger, F., & Latapy, M. (2016).
Efficient and simple generation of random simple connected graphs with prescribed degree sequence.
\emph{Journal of Complex Networks}, \emph{4}, 15-37.
}
\author{
Alexander Christensen <alexpaulchristensen@gmail.com>
}
