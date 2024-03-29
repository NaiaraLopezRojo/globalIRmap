% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IRmapping_functions.R
\name{flagGRDCoutliers}
\alias{flagGRDCoutliers}
\title{Flag GRDC outliers}
\source{
Gudmundsson, L., Do, H. X., Leonard, M., & Westra, S. (2018). The Global
Streamflow Indices and Metadata Archive (GSIM) – Part 2: Quality control,
time-series indices and homogeneity assessment. Earth System Science Data,
10(2), 787–804. https://doi.org/10.5194/essd-10-787-2018
}
\usage{
flagGRDCoutliers(in_gaugetab)
}
\arguments{
\item{in_gaugetab}{\link[data.table]{data.table} containing formatted daily
discharge record from GRDC gauging station (as formatted by \code{\link{readformatGRDC}}.}
}
\value{
\link[data.table]{data.table} of daily discharge records with additional
columns for outlier flags
}
\description{
Flag potential outliers in daily discharge records for a given GRDC gauging
station following the criteria developed for GSIM by
\href{https://essd.copernicus.org/articles/10/787/2018/}{Gudmundsson et al. (2018)}.
}
\details{
Criteria to flag a daily discharge value (Qt) as a potential outlier include:
\itemize{
\item Negative values (Qt < 0)
\item At least ten identical consecutive discharge values (for Qt > 0)
\item |log(Qt + 0.01) - mean| are larger than the mean values of log(Q + 0.01)
plus or minus 6 times the standard deviation of log(Q + 0.01) computed for
that calendar day for the entire length of the series. The mean and SD are
computed for a 5-day window centred on the calendar day to ensure that a
sufficient amount of data is considered. The log-transformation is used to
account for the skewness of the distribution of daily streamflow values.
\item Qt for which Original != Calculated discharge in GRDC record
}
}
