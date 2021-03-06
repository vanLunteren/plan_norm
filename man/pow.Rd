% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pow.R
\name{pow}
\alias{pow}
\title{Simulation of the type I error rate and the power}
\usage{
pow(delta = 0, Delta, sd, test = 1, alpha = 0.05, beta = 0.2, prop = seq(0.1, 1, 0.05),
    adj = F, rule = F, nbound = 500, simu = 10000)
}
\arguments{
\item{delta}{Number. Expectation difference of two samples.\cr
If you select a Test for superiority/ difference then select 'delta = 0'.\cr
Only if you select a Test for non-inferiority you can select 'delta != 0'.\cr
Attention: If you chose 'test = 1' and 'delta != 0', the test for non-inferiority will \cr
automatically be applied.\cr
If not specified, delta is set to 0.}

\item{Delta}{Number/ Vector of numbers. Relevant difference of expected values in the alternative hypothesis.}

\item{sd}{Number. Assumed standard deviation of the data. \cr
Used to calculate the originally planned number of cases.}

\item{test}{Number. What type of hypothesis test should be performed. One-sided (Superiority/ \cr
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

\item{prop}{Number/ sequence of numbers.\cr
Timing of the internal pilot study depending on the originally planned sample size.}

\item{adj}{Logical. Should the one-sample variance, calculated in the internal pilot study, be adjusted?}

\item{rule}{Logical. Should the sample size adjustment rule be applied by Wittes and Brittain?}

\item{nbound}{Number. Upper limit of the sample size.\cr
Attention: Only if you choose nbound can a suitable standard deviation range for the plots \cr
be calculated automatically. \cr
If no nbound are defined then a standard deviation range must be chosen (see \code{sd_ber}).}

\item{simu}{Number. How many simulations should be performed?\cr
If not specified, simu is set to 10000.}
}
\value{
This function only creates the power values for multiple timings of the internal pilot studies.\cr
The output is used in the function \code{pow_prop} to visualize the power depending on the \cr
timing for different true expected value differences.
}
\description{
This is an auxiliary function.
It calculates the type I error rate and the power of the design with an internal pilot study for
different timings of the pilot study and for multiple actual differences in expected differences.
The originally planned sample size is calculated on the basis of an assumed standard deviation.
A distinction is made between one-sided and two-sided tests.
}
\seealso{
\code{\link{sim_calc}}
}
\author{
Csilla van Lunteren
}
