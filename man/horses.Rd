\name{horses}
\alias{horses}
\docType{data}
\title{Horse Racing at Eagle Farm data}
\description{
Results of horse races at Eagle Farm, Brisbane, on 31 August 1998. The data, collected by Donald Forbes for his MS305 Data Analysis Project, give results for each horse in a sequence of 8 races.
}

\format{This data frame contains the following columns:
 \describe{
    \item{Position}{
 (Finishing position)
    }
    \item{Starters}{
Number of horses in race
    }
    \item{Last}{
Finishing position in last race
    }
    \item{Since}{
Days since last race
    }
    \item{Number}{
Identifying number of horse in race
    }
    \item{Carried}{
 Weight carried
    }
    \item{Weight}{
 Handicap weight
    }
    \item{Barrier}{
Barrier position at start of race
    }
    \item{Distance}{
Length of race
    }
    \item{Lengths}{
Number of lengths that horse finished from winner
    }
    \item{Odds}{
Starting odds
    }
    \item{Starts}{
Number of races previously started in
    }
    \item{Age}{
Age of horse in years
    }
    \item{Ratio}{
Proportion of wins in previous starts
    }
 }
}


\references{
Forbes, D. (1998). A Day at the Races.   \emph{MS305 Data Analysis Project, Department of Mathematics, University of Queensland.}}

\examples{
##Load the data
 library(FMsmsnReg)
 data(horses)
 attach(horses)

#Set the response y and covariate x
 x1 <- cbind(1,Last,Carried)
 y  <- Position

##Fits a linear Regression Model with Finite Mixtures of Skew Contaminated Normal

parCN  <- FMsmsnReg(y, x1, g=2, get.init = TRUE, criteria = TRUE, group = FALSE,
         family = "Skew.cn", error = 10^-4, iter.max = 5000,obs.prob= FALSE,
         kmeans.param = NULL,show.converge=FALSE,cp=0.5)

##Fits a linear Regression Model with Finite Mixtures of Skew normal
 parSN <- FMsmsnReg(y, x1, g=2, get.init = TRUE, criteria = TRUE,
          group = FALSE,family = "Skew.normal", error = 10^-4,
          iter.max = 5000,obs.prob= FALSE, kmeans.param = NULL,show.converge=FALSE,cp=0.5)

}

\keyword{datasets}
