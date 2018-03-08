library(testthat)
library(hypeR)


hyp_test <- function(data, mean_0){}
# This function prints the p-value and a recommendation for 
#rejecting or accepting the null hypothesis.

# Arguments: data: a 1-dimensional array. Non-numerical values result in an error
#            mean_0: the mean (as a number) of the population under the null hypothesis. Default: 0.
#
# Returns: results: a summary in the form of a string.
##############################################


test_that("hyp_test is an integer",{
expect_type(hyp_test, "integer")
  })

test_that("hyp_test input greater than 0", {
  data <- [1, 2, 3, 4]
  expect_more_than(hyp_test(length(data)), 0)
})

test_that("hyp_test input must not have missing values",{
  data <- [1, 2, 3, 4]
  expect_identical(data, na.omit(data))
  
})

