# hypeR

# Authors

Joe Sastrillo

Siobhan McCarter

Ivan Despot

# Project Summary

The goal of this project is to create a user-friendly and intuitive **hypothesis testing** package as a reimplementation of existing scipy functions.

Hypothesis testing belongs in the *statistical inference* domain, where an individual is attempting to determine if their results are significant or not. To accomplish this, the individual must generate a **null** and **alternative** hypotheses, and perform a series of statistical tests. That individual can use our package to make their life easier when looking for the elusive "significant" result.

This project is part of the DSCI 524 Collaborative Software Development Course for the Masters of Data Science program at the University of British Columbia.

# Function Examples

* `conf_int(data)`

  * Computes the confidence interval of the mean from a population.
  * Arguments:
    * `data`: a 1-dimensional R array. Non-numerical values result in an error.
  * Returns:
    *  `interval`: a 2 element array indicating the start and end of the 95% confidence interval.

* `hyp_test`
  * Returns test-statistic, p-value and a recommendation for rejecting or accepting the null hypothesis.
  * Arguments:
    * `data`: a 1-dimensional R array. Non-numerical values result in an error.
  * Returns:
    * `results`: a summary text

* `t_test`
  * Calculates a t-statistic of the data relative to a mean which may be specified.
  * Arguments
    * `data`: a 1-dimensional R array. Non-numerical values result in an error.
    * `mean`: the mean (as a number) of the population under the null hypothesis. Default of zero.
  * Returns:
    * `t`: the t-statistic as a number

# Current Environment

There are multiple packages in both Python and R that have similar functions and features as this package. For example, [Scipy](https://docs.scipy.org/doc/scipy/reference/stats.html) has an entire module that is capable of performing advanced hypothesis testing. Likewise, base R has several similar functions, and there is a wide variety of unique hypothesis testing packages available - such a [hypothesestest](https://cran.r-project.org/web/packages/hypothesestest/hypothesestest.pdf).
