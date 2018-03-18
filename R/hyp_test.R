#' Prints the p-value and a recommendation for rejecting or accepting the null hypothesis.
#'
#' @param data A 1-dimensional array. Non-numerical values result in an error
#' @param mean_0 The mean (as a number) of the population under the null hypothesis. Default: 0.
#' @param alpha The threshold for Type I errors as an float.
#' @return The p-value
#' @export
hyp_test <- function(data, mean_0, alpha){

  # determine dof
  deg_of_freedom <- (length(data) - 1)
  if( deg_of_freedom < 2 ){
    stop("data must not be empty")
  }

  # determine test statistics
  test_statistic <- t_test(data, mean_0)

  # find critial value
  critical_value <- stats::qt(alpha, df = deg_of_freedom)

  # calculate 2-tailed p-value
  test_statistic <- abs(test_statistic)
  p_value <- 2*stats::pt(abs(test_statistic), df = deg_of_freedom, lower.tail=FALSE)


  if(test_statistic <= critical_value)
    {print("The test statistic is less than the critial value. Therefore, you should reject the null hypothesis.")}

  else
    {print("The test statistic is greater than the critial value. Therefore, you should accept the null hypothesis.")}

  print("The p-value is:")
  return(p_value)
}

# Source: https://www.r-bloggers.com/hypothesis-testing-on-normally-distributed-data-in-r/

