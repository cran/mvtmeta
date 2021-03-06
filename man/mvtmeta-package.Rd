\name{mvtmeta-package}
\alias{mvtmeta-package}
\alias{mvtmeta}
\docType{package}
\title{
Multivariate meta-analysis
}
\description{
This package contains functions to run fixed effects or random effects multivariate meta-analysis.
}
\details{
\tabular{ll}{
Package: \tab mvtmeta\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2020-02-11\cr
License: \tab GPL-3\cr
}
Use the function mvrmeta_fe to run the fixed effects multivariate meta-analysis. Use the function mvrmeta_re to run the random effects multivariate meta-analysis.
}
\author{
Han Chen

Maintainer: Han Chen <hanchen@bu.edu>
}
\references{
Chen, H., Manning, A.K. and Dupuis J. (2012) A method of moments estimator for random effect multivariate meta-analysis. Biometrics 68, 1278-1284.
}
\keyword{multivariate}
\keyword{methods}
\keyword{models}
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
re <- mvtmeta_re(y, cov)
}
