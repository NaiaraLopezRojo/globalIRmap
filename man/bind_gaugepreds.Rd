% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IRmapping_functions.R
\name{bind_gaugepreds}
\alias{bind_gaugepreds}
\title{Bind gauge predictions}
\usage{
bind_gaugepreds(in_gpredsdt, interthresh)
}
\arguments{
\item{in_gpredsdt}{either a single data.table of predictions for gauges (output from \link{make_gaugepreds})
or a list of data.tables of model predictions to bind.}

\item{interthresh}{either a single value or a data.table of values of the
probability threshold to assign predicted flow intermittence classes to
gauging stations (based on the predicted probability of flow intermittence).}
}
\value{
data.table compiling all predictions with new columns of the predicted
categorical flow intermittence class ("IRpredcat_') and flow intermittence
prediction residuals (IPR; named preduncert_).
The column suffixes reflect whether the predictions are based on the
final model training or on cross-validation results (see \link{make_gaugepreds}).
}
\description{
Compile predictions from multiple models. This function was used in the case
when multiple models were developed for different (possibly overlapping) subsets
of gauging stations.
}
\details{
when several predictions are provided for the same gauging station (as was the
case for this study for gauges with a long-term mean annual flow between 1 and 10 m3/s), the
average predicted probability of flow intermittence was computed.
}
