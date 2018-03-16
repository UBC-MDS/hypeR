# hypeR

Status: [![Build Status](https://travis-ci.org/UBC-MDS/hypeR.svg?branch=master)](https://travis-ci.org/UBC-MDS/hypeR)

# Authors

Joe Sastrillo

Siobhan McCarter

Ivan Despot


# Project Summary

The goal of this project is to create a user-friendly and intuitive **hypothesis testing** package as a reimplementation of existing functions in the R stats package.

Hypothesis testing belongs in the *statistical inference* domain, where an individual is attempting to determine if their results are significant or not. To accomplish this, the individual must generate a **null** and **alternative** hypotheses, and perform a series of statistical tests. That individual can use our package to make their life easier when looking for the elusive "significant" result.

Why is this useful? We aimed to create a package in which you could easily take in a data set and determine whether to accept or reject the null. The package does not require two inputs of data sets. Instead, you can compare your data set to a mean that you choose.  

This project is part of the DSCI 524 Collaborative Software Development Course for the Masters of Data Science program at the University of British Columbia.


# Functions

* `conf_int(data)`

  * Computes the confidence interval of the mean from a sample.
  * Arguments:
    * `data`: a vector of numbers. Non-numerical values result in an error.
  * Returns:
    *  `interval`: a 2 element vector indicating the start and end of the 95% confidence interval.

* `hyp_test`
  * Prints the t-statistic, p-value and a recommendation for rejecting or accepting the null hypothesis.
  * Arguments:
    * `data`: a 1-dimensional R array. Non-numerical values result in an error.
    * `mean_0`: the mean (as a number) of the population under the null hypothesis. Default: 0.
    * `alpha`: Threshold for type I errors. Value is between 0 and 1.
  * Returns:
    * `results`: a summary text

* `t_test`
  * Calculates a t-statistic of the data relative to a mean which may be specified.
  * Arguments
    * `data`: a 1-dimensional R array. Non-numerical values result in an error.
    * `mean_0`: the mean (as a number) of the population under the null hypothesis. Default: 0.
  * Returns:
    * `t`: the t-statistic as a number

# Vignettes

To see an example of how to use this package run the vignette:

```{r}
vignette('hypothesis-testing')
```


# Installation / Uninstallation and Execution

To install this package, run the following command in the console for RStudio:

`devtools::install_github("UBC-MDS/hypeR")`


Installing the package automatically installs the vignette.

To perform a clean removal of the packages, run

`remove.packages('hypeR')`

# Running Tests
To run the tests for this package, download and change directory to the repository.
Then, in _Rstudio_ console:

1. Load the package functions into the environment using `devtools::load_all()`
2. Run the tests using: `devtools::test()`


# Current Environment

There are multiple packages in both Python and R that have similar functions and features as this package. For example, [Scipy](https://docs.scipy.org/doc/scipy/reference/stats.html) has an entire module that is capable of performing advanced hypothesis testing. Likewise, base R has several similar functions, and there is a wide variety of unique hypothesis testing packages available - such a [hypothesestest](https://cran.r-project.org/web/packages/hypothesestest/hypothesestest.pdf).
