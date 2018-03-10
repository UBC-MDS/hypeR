hyp_test <- function(data, mean_0, alpha){
# This function prints the p-value and a recommendation for
#rejecting or accepting the null hypothesis.

# Arguments: data: a 1-dimensional array. Non-numerical values result in an error
#            mean_0: the mean (as a number) of the population under the null hypothesis. Default: 0.
#            alpha: the threshold for Type I errors as an float.
# Returns: results: a summary in the form of a string.
##############################################

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
  print(p_value)
}

# Source: https://www.r-bloggers.com/hypothesis-testing-on-normally-distributed-data-in-r/

