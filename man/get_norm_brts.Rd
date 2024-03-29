% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_norm_brts.R
\name{get_norm_brts}
\alias{get_norm_brts}
\title{Collect the normalized branching times from the stem age}
\usage{
get_norm_brts(phylogeny)
}
\arguments{
\item{phylogeny}{a phylogeny of class 'phylo'}
}
\value{
branching times, in time units before the present
}
\description{
Collect the normalized branching times from the stem age
}
\examples{
  phylogeny <- ape::read.tree(text = "((a:2,b:2):1,c:3);")
  phylogeny$root.edge <- 2 # nolint ape variable name
    all(nLTT::get_branching_times(phylogeny) == c(5, 3, 2))
}
\author{
Richèl Bilderbeek
}
