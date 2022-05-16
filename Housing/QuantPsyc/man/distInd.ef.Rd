\name{distInd.ef}
\alias{distInd.ef}
\title{ Complex Mediation for use in Bootstrapping }
\description{
  Computes the 'total indirect effect' from \code{distal.med} for use in \code{boot}
}
\usage{
distInd.ef(data, i)
}
\arguments{
  \item{data}{ data.frame used in \code{distal.med} }
  \item{i}{ \code{i} is a 'count' placeholder necessary for use in \code{boot} }
}
\details{
  This function is not useful of itself. It is specifically created as an intermediate step in bootstrapping the indirect effect. 
}
\value{
  indirect effect that is passed to boot for each bootstrap sample
  }
\references{ 

Davison, A. C. & Hinkley, D. V. (1997). \emph{Bootstrap methods and their application.} Cambridge, UK: Cambridge University Press. \cr

Fletcher, T. D. (2006, August). \emph{Methods and approaches to assessing distal mediation.} Paper presented at the 66th annual meeting of the Academy of Management, Atlanta, GA.\cr 

MacKinnon, D. P., Lockwood, C. M., Hoffman, J. M., West, S. G., & Sheets, V. (2002). A comparison of methods to test mediation and other intervening variable effects.  \emph{Psychological Methods, 7,} 83-104.\cr 

MacKinnon, D. P., Lockwood, C. M., & Williams, J. (2004). Confidence limit for indirect effect: distribution of the product and resampling methods. \emph{Multivariate Behavioral Research, 39,} 99-128.

}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 


\seealso{ \code{\link{distal.med}} }

\examples{

cormat <- matrix (c(1,.3,.15,.075,.3,1,.3,.15,.15,.3,1,.3,.075,.15,.3,1),ncol=4)
require(MASS)
d200 <- data.frame(mvrnorm(200, mu=c(0,0,0,0), cormat))
names(d200) <- c("x","m1","m2","y")

require(boot)
distmed.boot <- boot(d200, distInd.ef, R=999)
sort(distmed.boot$t)[c(25,975)]	#95\% CI
plot(density(distmed.boot$t))	# Distribution of bootstapped indirect effect
summary(distmed.boot$t)

}
\keyword{ models }
