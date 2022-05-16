\name{Normalize}
\alias{Normalize}
\title{ Normalize Data }

\description{ Convert data to Normal Scores with the same Mean and SD. 
	This reshapes data to conform to a Normal Distribution. It is not converting to z-scores 
	(i.e., it is not standardizing data)
	}
\usage{Normalize(x) }

\arguments{
\item{x}{Data to be normalized. Should be vector of scores}
	}
\value{A numeric with the same Mean and SD as x, but without skew or kurtosis}

\references{
Joreskog, K., Sorbom, D., du Toit, S., & du Toit, M. (2000). LISREL 8: New Statistical Features. SSI. \cr
\cr
Snippets of code were borrowed and modified from: http://zoonek2.free.fr/UNIX/48_R/03.html
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\section{Warning }{This is a primative function. I have a long to do list.
		For example, it is not yet written to handle missing observations.}
		
\seealso{  \code{\link{norm}}}

\examples{

summary(USJudgeRatings$CONT)
plot(density(USJudgeRatings$CONT))

ContN <- Normalize(USJudgeRatings$CONT)
summary(ContN)
lines(density(ContN), col=2)
}

\keyword{univar}
\keyword{distribution}