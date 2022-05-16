\name{distal.med}
\alias{distal.med}
\alias{se.indirect3}
\title{ Distal Indirect Effect }
\description{
  Computes the indirect effect (and all paths) in a 4 variable system, assuming all paths estimated. }
\usage{
distal.med(data)
}
\arguments{
  \item{data}{data.frame containing the variables labeled 'x', 'm1', 'm2', and 'y' respectively. }
}
\details{
  Computes the paths in the model system: /cr
  Y = t'X + fM1 + cM2 \cr
  M2 = eX + bM1 \cr
  M1 = aX \cr
  and the indirect effect a*b*c + a*f + e*c 
  }
\value{
  Returns a table with all the effects and decomposition of effects in the above 4 variable system inclucing the standard errors and t-values.
  \item{a}{Effect of X on M1}
  \item{b}{Effect of M1 on M2 controlling for X}
  \item{c}{Effect of M2 on Y controlling for X and M1}
  \item{e}{Effect of X on M2 controlling for M1}
  \item{f}{Effect of M1 on Y controlling for X and M2}
  \item{abc}{'Direct' Indirect Effect of X on Y}
  \item{af}{Indirect Effect of X on Y through M1 only}
  \item{ef}{Indirect Effect of M1 on Y though M2}
  \item{ind.xy}{'Total' Indirect effect of X on Y}
  \item{t}{Total Effect of X on Y}
  \item{t'}{Direct Effect of X on Y accounting for all mediators}

}

\references{ 

Fletcher, T. D. (2006, August). \emph{Methods and approaches to assessing distal mediation.} Paper presented at the 66th annual meeting of the Academy of Management, Atlanta, GA.\cr 

MacKinnon, D. P., Lockwood, C. M., Hoffman, J. M., West, S. G., & Sheets, V. (2002). A comparison of methods to test mediation and other intervening variable effects.  \emph{Psychological Methods, 7,} 83-104.\cr 

}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\note{ This function uses the following undocumented functions: \code{se.indirect3} }

\section{Warning}{This function is primative in that it is based on a simplistic model \emph{AND} forces the user to name the variables in the dataset x, m1, m2, and y. }


\seealso{ \code{\link{proximal.med}}, \code{\link{distInd.ef}} }

\examples{
cormat <- matrix (c(1,.3,.15,.075,.3,1,.3,.15,.15,.3,1,.3,.075,.15,.3,1),ncol=4)
require(MASS)
d200 <- data.frame(mvrnorm(200, mu=c(0,0,0,0), cormat))
names(d200) <- c("x","m1","m2","y")
distal.med(d200)

}
\keyword{ models }
