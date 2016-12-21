% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/od-funs.R
\name{line2routeRetry}
\alias{line2routeRetry}
\title{Convert straight SpatialLinesDataFrame from flow data into routes retrying
on connection (or other) intermittent failures}
\usage{
line2routeRetry(lines, pattern = "^Error: ", n_retry = 3, ...)
}
\arguments{
\item{lines}{A SpatialLinesDataFrame}

\item{pattern}{A regex that the error messages must not match to be retried, default "^Error: " i.e. do not retry errors starting with "Error: "}

\item{n_retry}{Number of times to retry}

\item{...}{Arguments passed to the routing function, e.g. \code{\link{route_cyclestreet}}}
}
\description{
Convert straight SpatialLinesDataFrame from flow data into routes retrying
on connection (or other) intermittent failures
}
\section{Details}{


See \code{\link{line2route}} for the version that is not retried on errors.
}
\examples{
\dontrun{
data(flowlines)
rf_list <- line2routeRetry(flowlines[1:2,], pattern = "nonexistanceerror", silent = F)
}
}
