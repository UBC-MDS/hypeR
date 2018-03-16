context("hyp_test test")

test_that("hyp_test is not a string",{
expect_error(hyp_test(data = "a random string"))
  })

test_that("hyp_test input greater than 0", {
  data <- c(1, 2, 3, 4)
  mean_0 <- 1
  alpha <- 0.5
  expect_gt(hyp_test(length(data), mean_0, alpha), 0)
})

test_that("hyp_test input must not have missing values",{
  data <- c(1, 2, 3, 4)
  expect_identical(data, na.omit(data))

})

