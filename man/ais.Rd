\name{ais}
\alias{ais}
\docType{data}
\title{Australian institute of sport data}
\description{
Data on 102 male and 100 female athletes collected at the Australian
Institute of Sport.
}
\format{This data frame contains the following columns:
 \describe{
    \item{Sex}{
 (0 = male or 1 = female)
    }
    \item{Ht}{
 height (cm)
    }
    \item{Wt}{
 weight (kg)
    }
    \item{LBM}{
 lean body mass
    }
    \item{RCC}{
 red cell count
    }
    \item{WCC}{
 white cell count
    }
    \item{Hc}{
 Hematocrit
    }
    \item{Hg}{
 Hemoglobin
    }
    \item{Ferr}{
 plasma ferritin concentration
    }
    \item{BMI}{
 body mass index, weight/height^2
    }
    \item{SSF}{
 sum of skin folds
    }
    \item{Bfat}{
 Percent body fat
    }
    \item{Label}{
 Case Labels
    }
    \item{Sport}{
 Sport
    }
 }
}

\references{
S. Weisberg (2005).  \emph{Applied Linear Regression}, 3rd edition.  New York:
Wiley, Section 6.4}

\examples{

##Load the data
 library(FMsmsnReg)
 data(ais)
 attach(ais)
#Set the response y and covariate x
 x1    <- cbind(1,SSF,Ht)
 y     <- Bfat

##Fits a linear Regression Model with Finite Mixtures of Skew t
 parST <- FMsmsnReg(y, x1, g=2, get.init = TRUE, criteria = TRUE,
          group = FALSE,family = "Skew.t", error = 10^-4,
          iter.max = 2000,obs.prob= FALSE, kmeans.param = NULL,show.converge=FALSE,cp=0.5)

##Fits a linear Regression Models with Finite Mixtures of Skew normal
 parSN <- FMsmsnReg(y, x1, g=2, get.init = TRUE, criteria = TRUE,
          group = FALSE,family = "Skew.normal", error = 10^-4,
          iter.max = 5000,obs.prob= FALSE, kmeans.param = NULL,show.converge=FALSE,cp=0.5)

##Fits a linear Regression Models with Finite Mixtures of Skew Contaminated Normal
 parCN <- FMsmsnReg(y, x1, g=2, get.init = TRUE, criteria = TRUE,
          group = FALSE,family = "Skew.cn", error = 10^-4,
          iter.max = 5000,obs.prob= FALSE, kmeans.param = NULL,show.converge=FALSE,cp=0.5)
}

\keyword{datasets}
