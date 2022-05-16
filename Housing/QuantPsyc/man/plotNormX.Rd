\name{plotNorm}
\alias{plotNormX}
\alias{plotNormXm}
\title{ Normal Density Plot}
\description{
  Plots the density distribution of 'x' (e.g., smoothed histogram) with an overlaying normal density plot with the same mean and SD. This is useful for 'seeing' the degree of deviance from normality.
}
\usage{
plotNormX(x)
plotNormXm(x, im)
}
\arguments{
  \item{x}{ any data object such as a column(s) or variable(s) from a data.frame}
  \item{im}{ number of items in x-multivariate to be plotted}
    }
\details{
\code{plotNormX} is useful for single use (univariate) objects, but \code{plotNormXm} is more useful for creating multiple graphs (i.e., multivariate) as in sending graphs to a postcript or pdf device. See examples below. }
\value{
A graph of density of x. 
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 


\seealso{ \code{\link{eda.uni}} }

\examples{
#	plot.normX	
data(USJudgeRatings)	# data packaged with R
plotNormX(USJudgeRatings$CONT) 

# creates a pdf file that contains plots for all 12 variables in USJudgeRatings

#	plot.normXm	
data(USJudgeRatings)	
pdf("Judge.pdf")	#writes file to working directory 
plotNormXm(USJudgeRatings, 12) 
dev.off()
}

\keyword{distribution}
\keyword{smooth}