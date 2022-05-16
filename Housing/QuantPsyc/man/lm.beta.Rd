\name{lm.beta}
\alias{lm.beta}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Standardized Regression Coefficients }
\description{
  Computes the standardized regression coeffients (beta) from an object of class (lm)
}
\usage{
lm.beta(MOD)
}
\arguments{
  \item{MOD}{ MOD is object from \code{lm} with the form y ~ x1 + x2 + ...  }
}

\value{
  A "numeric" representing each standardized coefficient from lm() model
  
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 


\section{Warning }{This function does not produce 'correct' standardized coefficients when interaction terms are present} 

\seealso{  \code{\link{Make.Z}}, \code{\link{lm}} }

\examples{
us <- USJudgeRatings
names(us)
lm1 <- lm ( CONT ~ INTG + DMNR + DILG, us)
lm.beta(lm1)

# Standardized data (using Make.Z())

usz <- data.frame (Make.Z (us))
lm1.z <- lm ( CONT ~ INTG + DMNR + DILG, usz)

# compare standardized data versus lm.beta

summary(lm1.z)

}
\keyword{ models }
