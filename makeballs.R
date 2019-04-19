library(tidyverse)

ball_maker <- function(diff, n = 12){
  if(n > length(letters)){
    message("Too many balls.")
  } else {
    balls = c(rep(1, n-1), 1 * diff)
    names(balls) <- letters[1:n]
    sample(balls, n)
  }
}

weigh_balls <- function(x, y){
  if(sum(x) > sum(y)){
    message("X is heavier.")
    return(x)
  } else {
    message("Y is heavier.")
    return(y)
  }
}

balls = ball_maker(0.9)

weigh_balls(balls[1:6], balls[7:12])
