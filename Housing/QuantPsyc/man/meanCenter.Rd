\name{meanCenter}
\alias{meanCenter}

\title{ Mean Center Variables}
\description{
  This simple function subtracts the mean from a variable rendering mean-centered variables.
}
\usage{
meanCenter(x)
}
\arguments{
  \item{x}{ variable or column of data to be centered }
    }
\details{
  This is particularly useful in lm() with higher order terms as in moderation. 
}
\value{
  a numeric; mean centered 'x'
}
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 



\examples{
data(USJudgeRatings)
usCONT <- meanCenter(USJudgeRatings$CONT)
summary(usCONT)

}
\keyword{ univar }
