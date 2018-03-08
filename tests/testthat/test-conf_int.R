library(testthat)
context("conf_int test")

conf_int <- function(data){
  # This function takes in an array and outputs the 95% confidence interval of the population mean.

  # Arguments: data: a 1D array of a list of numbers. Non-numerical values result in an error.

  # Returns: interval: a 2-element 1D array indicating the start and end of the 95% confidence interval.
}

# Check that output is an array
test_that("output data type?", {
  data <- c(1, 2, 3, 4)
  expect_true(is.array(conf_int(data)))
})

# Checking to ensure that inputs are not strings
test_that("data type?", {
  expect_error(conf_int("this is a string!!"), "Invalid data type")
})

# Checking to ensure that inputs are not Boolean
test_that("data type?", {
  expect_error(conf_int(TRUE), "Invalid data type")
})

# Checking to ensure that there are no NA values
test_that("NA values?", {
  test <- array(c(1,2,3,4,NA))
  expect_error(conf_int(test), "NA values present")
})

# Checking to ensure that the input array is not empty
test_that("length greater than 0", {
  length_test <- array()
  expect_error(conf_int(length_test), "Empty array")
})

# Checking to ensure that the math is correct
test_that("math is correct",{
  data_test <- array(c(1,2,3,4,5))
  output <- array(c(1.61, 4.38))
  expect_equal(conf_int(data_test), output)
})
