% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qpAdm.R
\name{qpAdm_filter}
\alias{qpAdm_filter}
\title{Filter qpAdm rotation results for only 'sensible' models}
\usage{
qpAdm_filter(x, p = 0.05)
}
\arguments{
\item{x}{Output of a qpAdm_rotation() function}

\item{p}{p-value cutoff (default 0: will only filter for sensible
admixture proportions)}
}
\value{
qpAdm_rotation object filtered down based on p-value
}
\description{
Filter for p-value larger than a specified cuttof and admixture
proportions between 0 and 1.
}
\examples{
\dontrun{# download an example genomic data set and prepare it for analysis
snps <- eigenstrat(download_data(dirname = tempdir()))

# find the set of most likely two-source qpAdm models of
# a French individual - produce only the 'proportions'
# qpAdm summary
models <- qpAdm_rotation(
    data = snps,
    target = "French",
    candidates = c("Dinka", "Mbuti", "Yoruba", "Vindija",
                   "Altai", "Denisova", "Chimp"),
    minimize = TRUE,
    nsources = 2,
    ncores = 2,
    fulloutput = FALSE
)

# filter out models which can clearly be rejected
fits <- qpAdm_filter(models, p = 0.05)
}

}
