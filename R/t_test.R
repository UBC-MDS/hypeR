#' Calculates a t-statistic of the data relative to a mean which may be specified.
#'
#' @param data A 1D vector of numbers. Non-numerical values result in an error.
#' @param mean_0 A 1D vector of numbers. Non-numerical values result in an error.
#' @return The t statistic
t_test <- function(data, mean_0=0){

  # Checks if the input is correct
  err_msg = 'data must be a numpy array.'
  if ( !is.vector(data) ){
    stop(err_msg)
  }

  # Checks if there are any missing values
  err_msg <- 'data has missing values.'
  if ( any(is.nan(data)) ){
    stop(err_msg)
  }

  # Check if the data is empty
  err_msg <- 'data is empty'
  if ( length(data)<2 ){
    stop(err_msg)
  }

  # Compute statistics
  mu <- mean(data)
  npts <- length(data)

  ss <- sum( (data - mu)^2 )
  var <- ss / (npts-1)

  sem <- sqrt( var / npts)

  # t-statistic
  t <- ( mu - mean_0 ) / sem
  return(t)
}
