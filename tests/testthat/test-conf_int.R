library(testthat)
context("conf_int test")

# Check that output is a vector
test_that("output data type?", {
  data <- c(1, 2, 3, 4, 5)
  expect_true(is.vector(conf_int(data)))
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
  test <- c(1,2,3,4,NA)
  expect_error(conf_int(test), "NA values present")
})

# Checking to ensure that the input array is not empty
test_that("length greater than 0", {
  length_test <- vector()
  expect_error(conf_int(length_test), "Empty vector")
})

# Checking to ensure that the math is correct
test_that("math is correct",{
  data_test <- c(1,2,3,4,5)
  output <- c(1.61, 4.39)
  expect_equal(conf_int(data_test), output)
})
