conf_int <- function (data){
  # This function takes in an array and outputs the 95% confidence interval of the population mean.

  # Arguments: data: a 1D array of a list of numbers. Non-numerical values result in an error.

  # Returns: interval: a 2-element 1D vector indicating the start and end of the 95% confidence interval.

  if (is.logical(typeof(data)) == TRUE){
    stop("Invalid data type")
  }

  if (length(data) == NA){
    stop("Empty array")
  }

  mean <- mean(data)

  sd <- sd(data)

  n <- length(data)

  lower <-  round((mean - (1.96*(sd/sqrt(n)))),2)

  upper <- round((mean + (1.96*(sd/sqrt(n)))),2)

  conf <- array(c(lower, upper))

  return(conf)

}


#if isinstance(data, bool):
  #raise TypeError("Input cannot be a Boolean")

#if isinstance(data, str):
  #raise TypeError("Input cannot be a string")

#if np.isnan(data).any() == True:
  #return ValueError("Input cannot contain NA values")

#if len(data) == 0:
  #raise ValueError("Input cannot be empty")

