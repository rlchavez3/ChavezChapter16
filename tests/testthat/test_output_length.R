# check that input vector is the same length as the output vector
test_that('Input and output lengths the same', {
  expect_equal(length(fizz_buzz(17)), 17)
  expect_equal(length(fizz_buzz(50)), 50)
  expect_equal(length(fizz_buzz(1)), 1)
})
