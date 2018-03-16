context("hyp_test test")

test_that("hyp_test is not a boolean",{
expect_error(hyp_test(data = TRUE, mean_0 = 1, alpha = 0.05))
  })

test_that("hyp_test input greater than 0", {
  data <- vector()
  mean_0 <- 1
  alpha <- 0.5
  expect_error(hyp_test(data, mean_0, alpha), "missing value where TRUE/FALSE needed")
})

test_that("hyp_test input must not have missing values",{
  data <- c(1, 2, 3, 4)
  expect_identical(data, na.omit(data))

})

test_that("math is correct", {
  data <- c(1,2,3,4,5)
  mean_0 <- 2
  alpha <- 0.05
  output <- 0.9829453
  expect_equal(hyp_test(data, mean_0, alpha), output)

})
