% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{coef.cv.SplitReg}
\alias{coef.cv.SplitReg}
\title{Extract coefficients from a cv.SplitReg object.}
\usage{
\method{coef}{cv.SplitReg}(object, index = object$index_opt, ...)
}
\arguments{
\item{object}{Fitted cv.SplitReg object.}

\item{index}{Indices indicating values of lambda_S at which to extract coefficients. Defaults to the optimal value.}

\item{...}{Additional arguments for compatibility.}
}
\value{
A vector of coefficients
}
\description{
Extract coefficients from a cv.SplitReg object.
}
\examples{
library(MASS)
set.seed(1)
beta <- c(rep(5, 5), rep(0, 45))
Sigma <- matrix(0.5, 50, 50)
diag(Sigma) <- 1
x <- mvrnorm(50, mu = rep(0, 50), Sigma = Sigma)
y <- x \%*\% beta + rnorm(50)
fit <- cv.SplitReg(x, y, num_models=2)
split.coefs <- coef(fit)

}
\seealso{
\code{\link{cv.SplitReg}}
}
