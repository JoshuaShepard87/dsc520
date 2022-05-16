\name{proximal.med}
\alias{proximal.med}
\alias{aroian.se.indirect2}
\alias{goodman.se.indirect2}
\alias{se.indirect2}
\title{ Simple Mediation Models }
\description{
  Computes the Indirect Effect for a simple 3 variable mediation model: X -> M -> Y assuming direct effect X -> Y
}
\usage{
proximal.med(data)
}
\arguments{
  \item{data}{ data.frame containing the variables labeled 'x', 'm', and 'y' respectively. }
}
\details{
  This function computes all paths in the simple 3 variable system involving the following regressions: \cr
  Y = t'X + bM, and \cr
  M = aX \cr
  where t' + ab = t \cr
  
  The indirect effect is computed as the product of a*b. Several formula are used for the computation of the standard error for the indirect effect (see MacKinnon et al for a comprehensive review). \cr
  As noted below, one can use this function to create the indirect effect and then utilize bootstrapping for a more accurate estimate of the standard error and model the distribution of the direct effect. 
}
\value{
Creates a table containing the following effects, their standard errors, and t-values :

  \item{a}{Effect of X on M}
  \item{b}{Effect of M on Y controlling for X}
  \item{t}{Total effect of X on Y}
  \item{t'}{Direct effect of X on Y accounting for M}
  \item{ab}{Indirect effect of X on Y though M}
  \item{Aroian}{Standard error of ab using Aroian method}
  \item{Goodman}{Standard error of ab using Goodman method}
  \item{Med.Ratio}{Mediation Ratio: indirect effect / total effect}

}

\references{ 

MacKinnon, D. P., Lockwood, C. M., Hoffman, J. M., West, S. G., & Sheets, V. (2002). A comparison of methods to test mediation and other intervening variable effects.  \emph{Psychological Methods, 7,} 83-104.\cr }

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\note{ This function uses the following undocumented functions: \code{aroian.se.indirect2}, \code{goodman.se.indirect2}, \code{se.indirect2}} 

\section{Warning}{This function is primative in that it is based on a simplistic model \emph{AND} forces the user to name the variables in the dataset x, m, and y. }


\seealso{\code{\link{distal.med}}, \code{\link{proxInd.ef}}
}
\examples{

data(tra)
tmp.tra <- tra
names(tmp.tra) <- c('x','z','m','y')
data.frame(proximal.med(tmp.tra))  ## data.frame() simple makes the table 'pretty'


}

\keyword{ models }
