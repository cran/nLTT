% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_time_unit.R
\name{check_time_unit}
\alias{check_time_unit}
\title{Check if the time unit is valid}
\usage{
check_time_unit(time_unit)
}
\arguments{
\item{time_unit}{the time unit of the branching times
\itemize{
 \item{"ago: "}{the branching times are postive,
   as these are in time units ago}
 \item{"since: "}{the branching times are negative,
   as these are in time units since present}
}}
}
\description{
Will \link{stop} if not
}
\author{
Richèl J.C. Bilderbeek
}
