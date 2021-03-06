% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/semnetmeas.R
\name{semnetmeas}
\alias{semnetmeas}
\title{Semantic Network Measures}
\usage{
semnetmeas(A, meas = c("ASPL", "CC", "Q"), weighted = FALSE)
}
\arguments{
\item{A}{Matrix or data frame.
An adjacency matrix of a network}

\item{meas}{Character.
Global network measures to compute.
By default, computes ASPL, CC, and Q.
Individual measures can be selected}

\item{weighted}{Boolean.
Should weighted measures be computed?
Defaults to \code{FALSE}.
Set to \code{TRUE} for weighted measures}
}
\value{
Returns a values for ASPL, CC, and Q
}
\description{
Computes the average shortest path length (ASPL),
clustering coefficient(CC), and modularity (Q) of the network
}
\examples{
# Simulate Datasets
one <- sim.fluency(10)

# Compute similarity matrix
cos <- similarity(one, method = "cosine")

# Compute networks
net <- TMFG(cos)

# Compute global network measures
globmeas <- semnetmeas(net)

}
\author{
Alexander Christensen <alexpaulchristensen@gmail.com>
}
