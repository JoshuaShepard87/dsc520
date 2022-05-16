\name{ClassLog}
\alias{ClassLog}
\title{ Classification for Logistic Regression }

\description{ Provides a Classification analysis for a logistic regression model. 
	Also provides McFadden's Rsq.}

\usage{ClassLog(MOD, resp, cut=.5)}

\arguments{
  \item{MOD}{ Model of class glm where family is bonomial}
  \item{resp}{ response variable from data}
  \item{cut}{Arbitrary cut for the proportion deemed '1' in model}
}
\value{
	A list containing: /CR
\itemize{
	\item \emph{rawtab} two-way table of classifications as frequencies
	\item \emph{classtab} two-way table of classifications as percentages
	\item \emph{overall} Overall percent classifications that are correct
	\item \emph{mcFadden} McFaddens pseudoRsq; 1 - ModelDeviance / NullDeviance
	}}
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\section{Warning }{This is a primative function. I have a long to do list.
		For example, it is not yet written to handle missing observations.}
		
\seealso{  \code{\link{glm}}}

\examples{
# create some data
x <- rnorm(100)
y <- as.numeric(cut(.5*x + rnorm(100), breaks=2))-1
tdf <- data.frame(x=x, y=y)

# run a logistic regression	
glm1 <- glm(y ~ x, data=tdf, family=binomial)

# Get typical summary of results
summary(glm1)

# Classification Analysis
ClassLog(glm1, tdf$y)

}

\keyword{ models }


