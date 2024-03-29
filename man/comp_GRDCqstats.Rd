% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IRmapping_functions.R
\name{comp_GRDCqstats}
\alias{comp_GRDCqstats}
\title{Compute GRDC discharge statistics.}
\usage{
comp_GRDCqstats(path, maxgap, minyear = 1971, maxyear = 2000, verbose = FALSE)
}
\arguments{
\item{path}{(character) full path to the formatted daily streamflow record for a GRDC gauging station.}

\item{maxgap}{(integer) threshold number of missing daily records to consider a calendar year unfit for analysis.}

\item{minyear}{(integer) start year to include in computing statistics.}

\item{maxyear}{(integer) last year to include in computing statistics.}

\item{verbose}{(boolean) whether to print the input path upon executing the function.}
}
\value{
single-row data.table
}
\description{
Compute number of years with discharge data,  qmean, mean minimum flow,
mean minimum 3-day average flow, q10, q90 and q99 for a GRDC gauging station
}
