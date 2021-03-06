% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mean_or_mode.R
\name{mean_or_mode}
\alias{mean_or_mode}
\alias{median_or_mode}
\title{Class-dependent variable aggregation}
\usage{
mean_or_mode(x)

median_or_mode(x)
}
\arguments{
\item{x}{A vector.}
}
\value{
A numeric vector of length 1.
}
\description{
Summarize a vector/variable into a single number, either a mean (median) for numeric vectors or the mode for categorical (factor or logical) vectors. Useful for aggregation.
}
\examples{
require("datasets")
# mean for numerics
lapply(iris, mean_or_mode)

# median for numerics
lapply(iris, mean_or_mode)

}
\seealso{
\code{\link{prediction}}
}

