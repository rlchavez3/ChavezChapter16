# test if inputting negative, infinite, or zero results in error
test_that('Incorrect inputs result in errors', {
  expect_error(fizz_buzz(Inf))
  expect_error(fizz_buzz(0))
  expect_error(fizz_buzz(-5))
})
