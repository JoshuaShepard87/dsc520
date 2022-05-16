\name{norm}
\alias{norm}
\alias{Skew}
\alias{Kurt}
\title{ Skewness and Kurtosis }
\description{
  Computes Skewness and Kurtosis of data. 
}
\usage{
norm(x)
Skew(x)
Kurt(x)

}

\arguments{
  \item{x}{ A data object such as a numeric or column from a data.frame}
}

\value{
\code{norm} returns a table containing \code{Skew} & \code{Kurt}. Each contain the following elements:

  \item{Statistic}{value for Skewness or Kurtosis respectively}
  \item{SE }{Standard error for Skewness or Kurtosis}
  \item{t-val }{t or z ratio - Statistic/SE}
  \item{p}{p value associated with z distribution}
  
}
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\section{Warning }{These statistics should be used with caution as they are influenced by sample size!} 
\examples{

# create negatively skewed dat with 100 observations
xc <-  -rchisq(100,3)	
norm(xc)

}

\keyword{univar}
