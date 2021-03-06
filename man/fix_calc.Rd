% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fix_sample_pow.R
\name{fix_calc}
\alias{fix_calc}
\title{Conducted a study with a fixed sample size and normally distributed data}
\usage{
fix_calc(N0, sd_ber, delta = 0, Delta, test = 1, alpha = 0.05, beta = 0.2)
}
\arguments{
\item{N0}{Number. Size of the originally planned sample size.}

\item{sd_ber}{Number. Actual standard deviation in the data.}

\item{delta}{Number. Expectation difference of two samples.\cr
If you select a Test for superiority/ difference then select 'delta = 0'.\cr
Only if you select a Test for non-inferiority you can select 'delta != 0'.\cr
Attention: If you chose 'test = 1' and 'delta != 0', the test for non-inferiority will \cr
automatically be applied.\cr
If not specified, delta is set to 0.}

\item{Delta}{Number. Relevant difference of expected values in the alternative hypothesis.}

\item{test}{Number. What type of hypothesis test should be performed, one-sided (Superiority/ \cr
Non-Inferiority test) or two-sided (Test for difference).\cr
One-sided (test = 1): Superiortity H0: mu_x - mu_y <= 0 vs. H1: mu_x - mu_y > 0\cr
                      Non-Inferiority H0: mu_x - mu_y >= delta vs. H1: mu_x - mu_y < delta\cr
Two-sided (test = 2): Difference H0: |mu_x - mu_y| = 0 vs. H1: |mu_x -  mu_y| != 0\cr
Attention: Choice of delta. (see \code{delta})\cr
If not specified, the one-Sided Test (Superiority/ Non-Inferiority Test) is used.}

\item{alpha}{Number. Desired alpha-level of the test.\cr
If not specified, alpha is set to 0.05.}

\item{beta}{Number. Acceptable beta error of the test.\cr
If not specified, beta is set to 0.2.}
}
\value{
This function returns a value if the simulation study rejects (1) or can not reject (0) the \cr
null hypothesis.
}
\description{
This is an auxiliary function of 'fix_sample_pow' and 'pow'.
It is conducting a study with fixed sample size and normally distributed data. The calculated value of
the test statistic is compared directly with the corresponding quantile of the normal distribution.
}
\author{
Csilla van Lunteren

 @seealso
\code{\link{test_h0}}
}
