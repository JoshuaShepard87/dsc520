\name{graph.mod}
\alias{graph.mod}
\title{ Moderation Graph }
\description{
  x-y plot containing the simple slopes conditioned on z.
}
\usage{
graph.mod(ssmod, x, y, data, title = "", xlab = "Centered X", ylab = "Raw Y", ylimit = 1.5, ...)
}
\arguments{
  \item{ssmod}{ Results of \code{sim.slopes}; Simple Slopes to be graphed }
  \item{x}{ Explanatory variable to be used in xyplot }
  \item{y}{ Outcome variable to be used in xyplot }
  \item{data}{ data.frame containing x, z, y }
  \item{title}{ Optional 'main' title for the plot }
  \item{xlab}{ x-axis label }
  \item{ylab}{ y-axis label }
  \item{ylimit}{ used as a multiple of SDy to define the limits of the y-axis }
  \item{\dots}{ to be determined ... }
}
\details{
  Given \code{moderate.lm} and \code{sim.slopes}, this function plots x,y and adds the simple slopes corresponding to arbitrary values of z defined in \code{sim.slopes}. Users must 'click' on an area to add the legend.
  }
\value{
  A plot object.
}

\references{ 

Aiken, L. S., & West, S. G. (1991). \emph{Multiple regression: Testing and interpreting interactions.} Newbury Park: Sage Publications.\cr

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). \emph{Applied multiple regression/correlation analysis for the behavioral sciences, 3rd ed.} Mahwah, NJ: Lawrence Erlbaum Associates.\cr

}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

\section{Warning }{This is based on a simple 3 variable moderation model with continuous variables. Users must modify the functions to accomodate other models (e.g., categorical moderators, covariates)} 


\seealso{\code{\link{moderate.lm}}, \code{\link{sim.slopes} }
}
\examples{
data(tra)
lm.mod1 <- moderate.lm(beliefs, values, attitudes, tra)
ss.mod1 <- sim.slopes(lm.mod1, tra$values)
## requires user interaction 
## graph.mod(ss.mod1,beliefs,attitudes,tra,"Interaction Example")
}
\keyword{ models }
