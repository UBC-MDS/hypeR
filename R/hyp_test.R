#' Prints the p-value and a recommendation for rejecting or accepting the null hypothesis.
#'
#' @param data A 1-dimensional array. Non-numerical values result in an error
#' @param mean_0 The mean (as a number) of the population under the null hypothesis. Default: 0.
#' @param alpha The threshold for Type I errors as an float.
#' @return A summary in the form of a string.
hyp_test <- function(data, mean_0, alpha){

# determine dof
  deg_of_freedom <- (length(data) - 1)

# determine test statistics
  test_statistic <- (mean(data) - mean_0) / (sqrt(var(data)) / length(data))

# find critial value
  critical_value <- qt(alpha, df = deg_of_freedom)

# calculate p-value
  p_value <- pt(test_statistic, df = deg_of_freedom)

  if(test_statistic <= critical_value)
    {print("The test statistic is less than the critial value. Therefore, you should reject the null hypothesis.")}

  else
    {print("The test statistic is greater than the critial value. Therefore, you should accept the null hypothesis.")}

  print("The p-value is:")
  return(p_value)
}

# Source: https://www.r-bloggers.com/hypothesis-testing-on-normally-distributed-data-in-r/

