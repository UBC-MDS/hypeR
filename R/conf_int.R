conf_int <- function (data){
  # This function takes in a vector and outputs the 95% confidence interval of the sample mean.

  # Arguments: data: a 1D vector of numbers. Non-numerical values result in an error.

  # Returns: interval: a 2-element 1D vector indicating the start and end of the 95% confidence interval.

  # Check if input is empty
  if (length(data) == 0){
    stop("Empty vector")
  }

  # Check if input is logical
  if (any(is.logical(data))){
    stop("Invalid data type")
  }

  # Check if input is a string/character
  if (is.character(data)){
    stop("Invalid data type")
  }

  # Check if input has NA values
  if (sum(is.na(data)) > 0){
    stop("NA values present")
  }

  mean <- mean(data)

  sd <- sd(data)

  n <- length(data)

  lower <-  round((mean - (1.96*(sd/sqrt(n)))),2)

  upper <- round((mean + (1.96*(sd/sqrt(n)))),2)

  conf <- c(lower, upper)

  return(conf)

}
