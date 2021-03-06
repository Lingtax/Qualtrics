% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IRTplot.R
\name{IRTplot}
\alias{IRTplot}
\title{IRT graphing function}
\usage{
IRTplot(ltm)
}
\arguments{
\item{ltm}{An object of class ltm}
}
\description{
Generates ggplot ICCs for 2-parameter models generated by the ltm package.
}
\examples{
\dontrun{m1 <- ltm::ltm(ltm::WIRS~z1)
IRTplot(m1)}
}
