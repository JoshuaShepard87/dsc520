\name{tra}
\alias{tra}
\docType{data}
\title{Simulated Theory of Reasoned Action Data}
\description{
  Simulated data loosely based on the Theory of Reasoned Action from Social Psychology. Similar data are frequently used in publications involving moderation and mediation. These data were created for illustrative purposes.
}
\usage{data(tra)}
\format{
  A data frame with 1000 observations on the following 4 variables.
  \describe{
    \item{\code{beliefs}}{a numeric vector}
    \item{\code{values}}{a numeric vector}
    \item{\code{attitudes}}{a numeric vector}
    \item{\code{intentions}}{a numeric vector}
  }
}
\details{
  The data were constructed with the following model(s) in mind. Attitudes are a function of beliefs as moderated by values. Beliefs lead to intentions though their association with attitudes. }
  

\examples{
data(tra)
str(tra)
eda.uni(tra$intentions)
}
\keyword{datasets}
