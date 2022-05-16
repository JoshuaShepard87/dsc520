\name{QuantPsyc-package}
\alias{QuantPsyc-package}
\alias{QuantPsyc}
\docType{package}
\title{
Quantitative Psychology Tools 
}

\description{
This package contains tools useful in screening univariate and multivariate data, testing simple moderating relationships, extimating indirect effects based on simple (proximal) and complex (distal) mediating relationships. A tool for computing power in a given F distribution is also included. These are basic operations covered in a multivariate course in most Doctoral level Psychology programs. THese functions will also likely be useful in other domains (e.g., sociology, business management, medicine).

}
\details{
\tabular{ll}{
Package: \tab QuantPsyc\cr
Type: \tab Package\cr
Version: \tab 1.4\cr
Date: \tab 2010-08-07\cr
License: \tab GPL (version 2 or later)\cr
}

These functions can be grouped into 4 sets.\cr
     Data Screening\cr
     Moderation\cr
     Mediation\cr
     Power Calculation\cr
\cr

\emph{Data Screening} tools include both graphical and statistical methods for assessing the shape of the distributions as well as look for any outliers. Key functions include \code{norm} and \code{mult.norm}. \emph{Moderation} functions are based on Aiken & West (1991) and Cohen, Cohen, West & Aiken (2003). Currently, only simple models are permissible (Y ~ X + Z + XZ). Key functions include \code{moderate.lm}, \code{sim.slopes}, and \code{graph.mod}. \emph{Mediation} functions are largely based on MacKinnon et al (2002) and Fletcher (2006). Both simple (one mediator) and complex (chain of two mediators) relationships can be estimated. Key functions include \code{proximal.med}, and \code{distal.med}. Finally, \code{powerF} will calculate power based on an F distribution given percent variance accounted for (e.g. effect size) and degrees of freedom (e.g., model parameters and sample size). Some of the functions are original and others borrowed from numerous sources. I have taken care to reference appropriately. 
}

\author{
Thomas D. Fletcher\cr
Strategic Resources\cr
State Farm Insurance Cos.\cr


Maintainer: Thomas D. Fletcher <tom.fletcher.mp7e@statefarm.com>

}
\references{

Aiken, L. S., & West, S. G. (1991). \emph{Multiple regression: Testing and interpreting interactions.} Newbury Park: Sage Publications.\cr

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). \emph{Applied multiple regression/correlation analysis for the behavioral sciences, 3rd ed.} Mahwah, NJ: Lawrence Erlbaum Associates.\cr

Fletcher, T. D. (2006, August). \emph{Methods and approaches to assessing distal mediation.} Paper presented at the 66th annual meeting of the Academy of Management, Atlanta, GA.\cr

Khattree, R. & Naik, D. N. (1999). \emph{Applied multivariate statistics with SAS software (2nd ed.).} Cary, NC: SAS Institute Inc.\cr
	
MacKinnon, D. P., Lockwood, C. M., Hoffman, J. M., West, S. G., & Sheets, V. (2002). A comparison of methods to test mediation and other intervening variable effects.  \emph{Psychological Methods, 7,} 83-104.\cr

Murphy, K. R., & Myors, B. (2004). \emph{Statistical power analysis: A simple and general model for traditional and modern hypothesis tests (2nd ed.).} Mahwah, NJ: Lawrence Erlbaum Associates.

}

\keyword{ package }


\examples{

# Data Screening

data(USJudgeRatings)
norm(USJudgeRatings$CONT)
mult.norm(USJudgeRatings[,1:4])

# Moderation
data(tra)
lm.mod1 <- moderate.lm(beliefs, values, attitudes, tra)
ss.mod1 <- sim.slopes(lm.mod1,meanCenter(tra$values))
summary(lm.mod1)
ss.mod1
# use mouse click to place legend in graph.mod
# graph.mod(ss.mod1,beliefs,attitudes,tra,"Interaction Example")

# Mediation
# create object with names x, m, y
# data(tra)
temp.tra <- tra
names(temp.tra) <- c("x", "z", "m", "y")
proximal.med(temp.tra)

}
