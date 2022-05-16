\name{powerF}
\alias{powerF}

\title{ Power in F distribution}
\description{
  Computes power (1 - beta) to detect an effect with a given effect size, sample size (df) and specified alpha (significance) level. 
}
\usage{
powerF(PV, df2, df1 = 1, alpha = 0.05)
}

\arguments{
  \item{PV}{Percent of variance accounted for by effect.}
  \item{df2}{Denominator Degrees of Freedom for a given model}
  \item{df1}{Numerator Degrees of Freedom for a given model }
  \item{alpha}{Significance level for desired effect}
}
\details{

Murphy & Myors (2004) detail the use of a similar function and the notion that most distributions can be converted to F. Therefore, they argue that the F distribution is the most versatile in computing power. Typically, alpha is set at .05 (default). Users will likely find conversions of various distributions to F corresponding to a df1=1 (default). Therefore, users can manipulate df2 based on their model to estiamte sample size needs. Likewise, one may begin with a given sample size (i.e., df2) and manipulate PV (effect size) to iteratively determine what power their study is likely to detect. Conventions maintain that .80 is a sufficient target, and that no study shold be designed with power = .5 or less. 

}
\value{
A numeric value representing the power to detect the effect

}

\references{ 

Murphy, K. R., & Myors, B. (2004). \emph{Statistical power analysis: A simple and general model for traditional and modern hypothesis tests (2nd ed.).} Mahwah, NJ: Lawrence Erlbaum Associates.

 }
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

 \section{Warning }{It is critical that the user correctly specify the model for which the effect is obtained. For instance, if a single coeficient from a regression model is the object of inquiry (e.g., interaction effect in moderation model), the DF should reflect that effect and not the overall model, which also contains the 'main effects'. } 

\examples{

# Simulated TRA example
data(tra)
lm1 <- lm (attitudes ~ beliefs*values, tra)
summary(lm1) 
# power to detect the interaction effect, where df1 = 1 and df2 = n-k-1 = 996
# PV = t^2/(t^2+df2) = .1863
powerF(.1863, 996)

# Estimate sample size needed to detect interaction effect with PV = .01 and power = .8
powerF(.01, 200)  # too low
powerF(.01, 1000) # too high
powerF(.01, (800-3-1))  # just right: n=800 - k=3 - 1

}
\keyword{ distribution }
