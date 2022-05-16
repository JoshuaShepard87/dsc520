\name{sim.slopes}
\alias{sim.slopes}
\title{ Moderated Simple Slopes }
\description{
  Computes the simple slopes for a moderated regression model. 
  
}
\usage{
sim.slopes(mod, z, zsd = 1, mcz = FALSE)
}
\arguments{
  \item{mod}{linear model - usually constructed with \code{moderate.lm} }
  \item{z}{moderating variable}
  \item{zsd}{Multiple for SD of z; number of SDs from mean to construct simple slopes }
  \item{mcz}{logical whether z is already centered or not in the original data}
}
\details{
  Constructs the simple slopes for arbitrary values of z (e.g., +/- 1, 2, 3 standard deviations) involved in a moderated multiple regression equation.
}
\value{
  A table with the following values for zHigh (Meanz + zsd*SDz), Mean(Meanz), and zLow (Meanz - zsd*SDz):
  \item{INT }{Intercept of simple slope}
  \item{Slope }{Slope of the simple slope}
  \item{SE }{Standard Error of the slope}
  \item{LCL, UCL}{Lower and Upper confidence limits for slope} 

}


\references{ 

Aiken, L. S., & West, S. G. (1991). \emph{Multiple regression: Testing and interpreting interactions.} Newbury Park: Sage Publications.\cr

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). \emph{Applied multiple regression/correlation analysis for the behavioral sciences, 3rd ed.} Mahwah, NJ: Lawrence Erlbaum Associates.\cr

}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 


\seealso{ \code{\link{moderate.lm}}, \code{\link{graph.mod}}  }

\examples{

data(tra)
lm.mod1 <- moderate.lm(beliefs, values, attitudes, tra)
ss.mod1 <- sim.slopes(lm.mod1, tra$values)
ss.mod1

}
\keyword{ models }
