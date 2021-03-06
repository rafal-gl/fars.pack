% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fars_functions.R
\name{fars_read}
\alias{fars_read}
\title{Load a FARS data file}
\usage{
fars_read(filename)
}
\arguments{
\item{filename}{a character with a name of a file to be loaded}
}
\value{
a tibble with the same structure as the input file
}
\description{
This function loads a selected csv data file and returns a tibble
with coresponding variables.
}
\note{
This function will return an error if it does not find a file
 from filename parameter. Make sure you provide a proper file path.
}
\examples{
# set your wd to a directory with FARS data files
file_path <- system.file("extdata", package = "fars.pack")
setwd(file_path)
fl <- dir()[3]
fars2015 <- fars_read(fl)
str(fars2015)
}
