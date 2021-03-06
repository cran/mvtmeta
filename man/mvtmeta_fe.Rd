\name{mvtmeta_fe}
\alias{mvtmeta_fe}
\title{
Fixed effects multivariate meta-analysis.
}
\description{
This function computes the effect estimates and their covariance matrix for fixed effects multivariate meta-analysis, which is an extension of the inverse-variance fixed effects meta-analysis in the univariate case.
}
\usage{
mvtmeta_fe(y, cov)
}
\arguments{
  \item{y}{
A matrix. Each column represents observed effect estimates in each study.
}
  \item{cov}{
An array with the first two dimensions equal to the number of effects, and the third dimension equal to the number of studies. Each stratum is a symmetric, positive definite matrix representing corresponding covariance matrix from each study.
}
}
\details{
This function is an multivariate extension of the inverse-variance fixed effects meta-analysis. It computes the summary effect estimates and their covariance matrix using observed study-specific effect estimates and covariance matrices. Please make sure that the orders of effects and studies in \code{y} and \code{cov} match.\cr
Please note that fixed effects meta-analysis may provide invalid results when heterogeneity is present.
}
\value{
  \item{beta}{Summary effect estimates from meta-analysis.}
  \item{cov}{The covariance matrix for the summary effect estimates.}
}
\references{
Chen, H., Manning, A.K. and Dupuis J. (2012) A method of moments estimator for random effect multivariate meta-analysis. Biometrics 68, 1278-1284.
}
\author{
Han Chen
}

\seealso{
\code{\link{mvtmeta_re}}
}
\examples{
y <- matrix(c(0.3161, 7.4015, 0.4278,
              -0.3201, 6.9426, -0.9816,
              0.6983, 4.6680, -0.2415,
              3.2736, 4.3080, 0.2052,
              -0.1599, 5.6398, -0.6782,
              -0.6989, 6.3158, -0.7918,
              -3.6094, 9.3429, -2.8711,
              0.2172,6.4078,-0.6093), 3, 8)
cov <- array(c(2.3568, -1.2105, 0.8524, -1.2105, 9.7029,
                       -6.1753, 0.8524, -6.1753, 4.4114,
               0.2529, 0.1498, -0.1019, 0.1498, 0.7016,
                       -0.4167, -0.1019, -0.4167, 0.2743,
               0.1444, -0.0652, 0.0433, -0.0652, 0.6481,
                       -0.3899, 0.0433, -0.3899, 0.2608,
               3.8428, -4.5587, 3.2892, -4.5587, 10.3517,
                       -6.6684, 3.2892, -6.6684, 4.8268,
               0.1161, -0.0992, 0.0645, -0.0992, 0.4363,
                       -0.2610, 0.0645, -0.2610, 0.1733,
               0.1603, 0.0242, -0.0129, 0.0242, 0.7697,
                       -0.4686, -0.0129, -0.4686, 0.3180,
               3.2054, -1.1984, 0.8437, -1.1984, 17.8889,
                       -10.7697, 0.8437, -10.7697, 7.2101,
               0.0278, 0.0136, -0.0091, 0.0136, 0.1184,
                       -0.0716, -0.0091, -0.0716, 0.0482), c(3, 3, 8))
fe <- mvtmeta_fe(y, cov)
fe
}
\keyword{multivariate}
\keyword{methods}
\keyword{models}
