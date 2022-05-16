\name{mult.norm}
\alias{mult.norm}
\title{ Tests for Multivariate Normality}
\description{
  Returns tests for multivariate Skewness and kurtosis as well as Mahalanobis' D-squared.
}
\usage{
mult.norm(x, s = var(x), chicrit = 0.005)
}
\arguments{
  \item{x}{ A multivariate data object as in columns from a data.frame}
  \item{s}{ Covariance matrix of x (not necessary to specify) }
  \item{chicrit}{ p-value corresponding to critical value of chi-square distribution for detecting multivariate outliers}
}
\details{
  
  Tests for multivariate skewness and kurtosis were adapted from SAS macros in Khatree & Naik (1999). They attribute the formula to Mardia (1970; 1974). Mahalanobis' Dsq is based on Mahalanobis (1936). Dsq is multivariate analogue to z scores, but based on the chi-sq distribution rather than normal distribution. Once can specify at what level one wishes to define multivariate outliers (e.g., .005, .001)
}

\value{
A list containing the following:
  \item{mult.test }{Values for multivariate skeweness and kurtosis and their significance}
  \item{Dsq }{Mahalanobis' distances}
  \item{CriticalDsq }{Critical value of chi-sq distribution based on df and specified critical level}

}
\references{ 

Khattree, R. & Naik, D. N. (1999). \emph{Applied multivariate statistics with SAS software (2nd ed.).} Cary, NC: SAS Institute Inc.\cr
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\note{ Mahalanobis is returned without regard to NAs (missing observations) and is useful only in detecting IF multivariate outliers are present. If one wishes to determine which cases are multivariate outliers and if one has missing observations, \code{mahalanobis} is perhaps a better choice. \cr

These statistics are known to be susceptible to sample size (as in their univariate counterparts). One should always use graphical methods such as \code{qqplot} in addition to statistical.

}
\seealso{ \code{\link{mahalanobis}}, \code{\link{qqplot}} }

\examples{

# assess the multivariate normality of variables 4,5,6 in USJudgeRatings
data(USJudgeRatings)	
mn <- mult.norm(USJudgeRatings[,4:6],chicrit=.001)
mn

mn$Dsq > mn$CriticalDsq

}
\keyword{ multivariate }
\keyword{ distribution }
