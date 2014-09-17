\name{normLTTdiffSQ}
\alias{normLTTdiffSQ}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Calculate the squared difference between two normalized Lineage-Through-Time curves, given two phylogenetic trees.
}
\description{
  This function takes two ultrametric phylogenetic trees, calculates the normalized Lineage-Through-Time statistic for both trees and then calculates the squared difference between the two statistics.
}
\usage{
normLTTdiffSQ(tree1, tree2)
}
\arguments{
  \item{tree1}{
	an object of class \code{"phylo"};
}
  \item{tree2}{
	an object of class \code{"phylo"};
}
}
\value{
	The squared difference between the two nLTT statistics
}

\author{
 Thijs Janzen
}

\examples{data(exampleTrees);
	nLTT.plot(exampleTrees[[1]]);
	nLTT.lines(exampleTrees[[2]],lty=2);
	normLTTdiffSQ(exampleTrees[[1]],exampleTrees[[2]]);
}