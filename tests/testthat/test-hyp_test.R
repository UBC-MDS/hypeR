context("hyp_test test")

test_that("hyp_test is an integer",{
expect_type(hyp_test, "integer")
  })

test_that("hyp_test input greater than 0", {
  data <- c(1, 2, 3, 4)
  expect_more_than(hyp_test(length(data)), 0)
})

test_that("hyp_test input must not have missing values",{
  data <- c(1, 2, 3, 4)
  expect_identical(data, na.omit(data))

})

