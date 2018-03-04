library(testthat)
context("conf_int test")

conf_int <- function(data){
  # This function takes in an array and outputs the 95% confidence interval of the population mean.

  # Arguments: data: a 1D array of a list of numbers. Non-numerical values result in an error.

  # Returns: interval: a 2-element 1D array indicating the start and end of the 95% confidence interval.
}

# Checking to ensure that inputs are not string
test_that("data type?", {
  expect_error(conf_int("this is a string!!"), "invalid data type")
})

# Checking to ensure that inputs are not Boolean
test_that("data type?", {
  expect_error(conf_int(TRUE), "invalid data type")
})

# Checking to ensure that the input array is not empty
test_that("length greater than 0", {
  length_test <- array()
  expect_error(conf_int(length_test), "empty array")
})

# Checking to ensure that the math is correct
test_that("math is correct",{
  data_test <- array(c(1,2,3,4,5))
  output <- array(c(1.61, 4.38))
  expect_equal(conf_int(data_test), output)
})



def type_test(conf_int):
  '''
This tests whether there are incompatible data types in the input array. This includes the following:
Strings, booleans, NA values.
This should return a typeError.
'''
with pytest.raises(TypeError):
  conf_int("this is a string, not an array!")
conf_int(False)

# Test array with NA value present
NA_test = np.array([1, 2, 3, 4, np.nan])

with pytest.raises(TypeError):
  conf_int(NA_test)


def length_test(conf_int):
  '''
This function tests whether the input data array is empty, and throws a ValueError if it is.
'''

# An empty array
data_test = np.array([])

with pytest.raises(ValueError):
  conf_int(data_test)

