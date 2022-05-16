\name{Make.Z}
\alias{Make.Z}
\title{ Standardize Data }
\description{
  Converts data to standard normal (mean = 0; SD = 1) - i.e., z-scores.
}
\usage{
Make.Z(x)
}
\arguments{
  \item{x}{ Any data object (especially useful for multiple columns of a data.frame).}
}
\details{
  Takes the data (by columns if necessary) and subtracts out the mean and then divides by the standard deviation. The result is a standard normal z score.  }

\value{
  A numeric or matrix containing standardized data (i.e., z scores)}


\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

 \section{Warning }{The result is a matrix. One may wish to convert to data.frame or use as.data.frame(Make.Z(x))} 


\examples{

zUSJR <- Make.Z(USJudgeRatings)	# creates new object containg z scores
dim(zUSJR)			# shows that there are 43 observed z scores for 12 variables
zUSJR[,1]			# to look at only the first column of z scores

}

\keyword{ univar }
\keyword{ multivariate }
