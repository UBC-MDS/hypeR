library(testthat)
context("conf_int test")


# Test incorrect/unacceptable input data
# These should raise an error.

test_that("one or more input data is invalid", {
  expect_error( t_test(data='some string') )
  expect_error( t_test(data=F) )
  expect_error( t_test(data=2) )
  expect_error( t_test(data=c(0, NaN, 2)) )
})


# Tests inputs data which are uninterpretable.
# These should raise a value error.

test_that("input data is empty", {
  expect_error( t_test(data=c()) )
})


# Tests if the math being done is correct.

test_that("computation incorrect", {
  data <- c(1, 4, 2, 4)
  tstat_expected <- 3.666666666666667

  tol <- 1e-14
  expect_true( abs(t_test(data)-tstat_expected) < tol )
})
