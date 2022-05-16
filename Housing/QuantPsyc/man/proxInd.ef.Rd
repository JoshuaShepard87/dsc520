\name{proxInd.ef}
\alias{proxInd.ef}

\title{ Simple Mediation for use in Bootstrapping }
\description{
  Calculates the indirect effect from \code{proximal.med} in a form useful to send to \code{boot}
}
\usage{
proxInd.ef(data, i)
}
\arguments{
  \item{data}{ data.frame used in \code{proximal.med}}
  \item{i}{\code{i} is a 'count' placeholder necessary for use in \code{boot}}
}
\details{
  This function is not useful of itself. It is specifically created as an intermediate step in bootstrapping the indirect effect. 
  }
\value{
  indirect effect that is passed to boot for each bootstrap sample
}
\references{ 

Davison, A. C. & Hinkley, D. V. (1997). \emph{Bootstrap methods and their application.} Cambridge, UK: Cambridge University Press. \cr

MacKinnon, D. P., Lockwood, C. M., Hoffman, J. M., West, S. G., & Sheets, V. (2002). A comparison of methods to test mediation and other intervening variable effects.  \emph{Psychological Methods, 7,} 83-104.\cr 

MacKinnon, D. P., Lockwood, C. M., & Williams, J. (2004). Confidence limit for indirect effect: distribution of the product and resampling methods. \emph{Multivariate Behavioral Research, 39,} 99-128.

}


\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\seealso{ \code{\link{proximal.med}}}


\examples{
require(boot)
data(tra)
tmp.tra <- tra
names(tmp.tra) <- c('x','z','m','y')
med.boot <- boot(tmp.tra, proxInd.ef, R=999)
sort(med.boot$t)[c(25,975)]	#95\% CI
plot(density(med.boot$t))	# Distribution of bootstapped indirect effect
summary(med.boot$t)
}
\keyword{ models }
