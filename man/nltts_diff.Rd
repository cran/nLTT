% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nLTTDiff.R
\name{nltts_diff}
\alias{nltts_diff}
\title{Calculates the nLTT statistic between each phylogeny in
a collection compared to a same focal/reference tree}
\usage{
nltts_diff(
  tree,
  trees,
  distance_method = "abs",
  ignore_stem = TRUE,
  log_transform = FALSE
)
}
\arguments{
\item{tree}{One phylogenetic tree}

\item{trees}{A collection of one or more phylogenetic trees}

\item{distance_method}{(string) absolute, or squared distance?}

\item{ignore_stem}{(logical) Should the phylogeny its stem be ignored?}

\item{log_transform}{(logical) Should the number of lineages be
log-transformed before normalization?}
}
\value{
the nLTT statistic values, as a numeric vector of
  the same length as \code{trees}
}
\description{
Calculates the nLTT statistic between each phylogeny in
a collection compared to a same focal/reference tree
}
\examples{
  tree <- ape::rcoal(4)
  trees <- c(ape::rcoal(4), ape::rcoal(4))
  nltts <- nltts_diff(tree, trees)
}
\seealso{
use \code{\link{nltt_diff}} to compare two
  phylogenies
}
\author{
Richèl J.C. Bilderbeek
}
