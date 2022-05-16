\name{eda.uni}
\alias{eda.uni}

\title{ Plots for Exploratory Data Analysis  }
\description{
  This function is a modified version of \code{eda.shape} found in the S+ \emph{Guide to Statistics, v1}, p. 124. It is based on work by Tukey (1977) and each plot is described in more detail in Ch. 4 of Cohen et al. Creates 4 plots useful in assesing univariate distributions of data.
}
\usage{
eda.uni(x, title = "")
}

\arguments{
  \item{x}{ A univariate data object such as column of variable from a data.frame()}
  \item{title}{ Title printed above first plot in upper left corner }
}
\details{
  Simply provides a histogram, smoothed histogram, qq-plot, and boxplot for x. 
}
\value{
  A single graph object with 4 basic plots. 
}

\references{ 

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). \emph{Applied multiple regression/ correlation analysis for the behavioral sciences, 3rd ed.} Mahwah, NJ: Lawrence Erlbaum Associates. Chapter 4, Data Visualization, exploration, and assumption checking: Diagnosing and solving regression problems.\cr 

Insightful (2001). \emph{S-Plus 6 for Windows Guide to Statistics, Volume 1.} Seattle: Insightful.\cr

Tukey (1977). \emph{Exploratory Data Analysis.} Reading, MA: Addison-Wesley.\cr

}


\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 


\seealso{ \code{\link{hist}}, \code{\link{plot.density}}, \code{\link{qqnorm}}, \code{\link{boxplot}}  }

\examples{

# create negatively skewed dat with 100 observations
xc <-  -rchisq(100,3)	
eda.uni(xc)

}
\keyword{ univar }
\keyword{ distribution }
