\name{moderate.lm}
\alias{moderate.lm}
\title{ Simple Moderated Regression Model }
\description{
  This function creates an object of class lm() specific to a moderated multiple regression involving 3 variables.}
\usage{
moderate.lm(x, z, y, data, mc = FALSE)
}
\arguments{
  \item{x}{ focal explanatory variable }
  \item{z}{ moderating variable }
  \item{y}{ outcome variable }
  \item{data}{ data.frame containing the variables}
  \item{mc}{ Logical specifying wheter the data are already mean centered}
}
\details{
  This model takes x and z and creates the interaction term x*z. If the data are not already mean centered, then x and z are mean centered by subtracting out the means. This is necessary for interpretation and to reduce multicolinearity. The lm() is then computed thusly: Y ~ X + Z + XZ. 
  }
\value{
  An object of class lm(). One can use summary(), coef() or any other function useful to lm(). This model is used by other moderator tools - see below. 
  
}
\references{ 

Aiken, L. S., & West, S. G. (1991). \emph{Multiple regression: Testing and interpreting interactions.} Newbury Park: Sage Publications.\cr

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). \emph{Applied multiple regression/correlation analysis for the behavioral sciences, 3rd ed.} Mahwah, NJ: Lawrence Erlbaum Associates.\cr

}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

 \section{Warning }{This is a very simplistic model. If x or z are categorical, the results will not be accurate. The function can be modified by the user to deal with complications such as covariates, non-continuous variables, etc. } 


\seealso{ \code{\link{sim.slopes}}, \code{\link{graph.mod}}  }

\examples{
data(tra)
lm.mod1 <- moderate.lm(beliefs, values, attitudes, tra)
summary(lm.mod1)
}

\keyword{models}
