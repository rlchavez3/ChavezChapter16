#' Take in a number vector and return a vector of strings.
#'
#' Vector will contain 'Fizz' if index is divisible by 3, 'Buzz' if index is divisible
#' by 5, and 'Fizz Buzz' if index is divisible by both 3 and 5. Vector will contain
#' the index if it is not divisible by either.
#'
#' @param x A number
#' @return A vector of strings of length x containing a number, Fizz, Buzz, or Fizz Buzz
#' @examples
#' vector <- 1:17
#' fizz_buzz(vector)
#' @export

fizz_buzz <- function(x) {
  outVector <- NULL

  if(is.infinite(x)){
    stop('Input is infinite.')
  }

  if(x == 0){
    stop('Inout is zero.')
  }

  if(x < 0){
    stop('Input is negative.')
  }

  # loop for x numbers
  for(i in 1:x) {
    # check if divisible by both three and five
    if((i %% 3) == 0 & (i %% 5) == 0) {
      # add fizz to vector
      outVector[i] <- "Fizz Buzz"
    }

    # check if only divisible by five
    else if((i %% 5) == 0) {
      # add buzz to vector
      outVector[i] <- "Buzz"
    }

    # check if only divisible by three
    else if((i %% 3) == 0) {
      # add fizz buzz to vector
      outVector[i] <- "Fizz"
    }

    # assume not divisible by three or five
    else {
      # add number to vector
      outVector[i] <- i
    }
  }

  return(outVector)
}
