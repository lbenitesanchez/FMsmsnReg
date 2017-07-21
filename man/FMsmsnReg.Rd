\name{FMsmsnReg}
\alias{FMsmsnReg}
\title{
Linear Regression Models with Finite Mixtures of Skew Heavy-Tailed Errors
}
\description{
Performs a Finite Mixture of Scale Mixture Skew Normal Regression Model using EM-type algorithm (ECME) for iteratively computing maximum likelihood estimates of the parameters.
}
\usage{
FMsmsnReg(y, x1, Abetas = NULL, medj= NULL, sigma2 = NULL, shape = NULL,
pii = NULL, g = NULL, get.init = TRUE, criteria = TRUE, group = FALSE,
family = "Skew.normal", error = 0.00001, iter.max = 100, obs.prob= FALSE,
kmeans.param = NULL, show.convergence=TRUE, cp=0.4)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{y}{the response matrix (dimension nx1) }

\item{x1}{Matrix or vector of covariates.}

\item{Abetas}{Parameters of vector regression dimension \eqn{(p + 1)} include intercept}

\item{medj}{a list of \code{g} arguments of vectors of initial values (dimension p) for the location parameters}

\item{sigma2}{ a list of \code{g} arguments of matrices of initial values (dimension pxp) for the scale parameters }

\item{shape}{ a list of \code{g} arguments of vectors of initial values (dimension p) for the skewness parameters }

\item{pii}{Initial value for the EM algorithm. Each of them must be a vector of length g. (the algorithm considers the number of components to be adjusted based on the size of these vectors)}

\item{g}{the number of cluster to be considered in fitting}

\item{get.init}{if TRUE, the initial values are generated via k-means}

\item{criteria}{It indicates if are calculated the criterion selection methods (AIC, BIC, EDC and ICL)}

\item{group}{if TRUE, the vector with the classification of the response is returned }

\item{family}{distribution famility to be used in fitting (Skew.t", "Skew.cn", "Skew.slash", "Skew.normal") }

\item{error}{define the stopping criterion of the algorithm}

\item{iter.max}{the maximum number of iterations of the EM algorithm}

\item{obs.prob}{if TRUE, the posterior probability of each observation belonging to one of the g groups is reported}

\item{kmeans.param}{a list with alternative parameters for the kmeans function when generating initial values, list(iter.max = 10, n.start = 1, algorithm = "Hartigan-Wong")}

\item{show.convergence}{graphics of convergence for the parameters}

\item{cp}{Cut Point}
}


%\details{
%}
\value{
The function returns a list with 16 elements detailed as

\item{iter}{Number of iterations.}
\item{criteria}{Attained criteria value.}
\item{convergence}{Convergence reached or not.}
\item{mu}{Location parameter estimate.}
\item{sigma2}{Scale parameter estimate.}
\item{lambda}{Shape parameter estimate.}
\item{pii}{Weight parameter estimate.}
\item{nu}{Estimated degrees of freedom parameter.}
\item{SE}{Standard Error estimates, if the output shows \code{NA} the function does not provide the standard error for this parameter.}
\item{table}{Table containing the inference for the estimated parameters.}
\item{loglik}{Log-likelihood value.}
\item{AIC}{Akaike information criterion.}
\item{BIC}{Bayesian information criterion.}
\item{EDC}{Efficient Determination Criterion.}
\item{ICL}{Information Completed Likelihood.}
\item{time}{Processing time.}
}
\references{
Basso, R. . M., Lachos, V. H., Cabral, C. R., Ghosh, P., 2010. Robust mixture modeling based on scale mixtures of skew-normal distributions. Computational Statistics & Data Analysis doi:10.1016/j.csda.2009.09.031.

Lachos, V. H., Ghosh, P., Arellano-Valle, R. B., 2010. Likelihood based inference for skew - normal independent linear mixed models. Statistica Sinica 20, 303 - 322.
}

\author{Luis Benites Sanchez \email{lbenitesanchez@gmail.com} and Rocio Paola Maehara \email{rmaeharaa@gmail.com} and Victor Hugo Lachos \email{hlachos@ime.unicamp.br}}

%\note{
%}

\keyword{package}

\seealso{
\code{\link{FMsmsnReg}}, \code{\link{ais}}, \code{\link{horses}}
}

\examples{
#See examples for the FMsmsnReg function linked above.
}

\keyword{Finite Mixture}
\keyword{EM}
\keyword{smsn}
