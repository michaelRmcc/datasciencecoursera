#
# funcs from R Lang video lecture
# 
#
add2 <- function(a,b) {
  a+b
}

above10 <-function(x) {
  #variable use holds a True/False vector of
  #which values in x are greater than 10
  use <- x > 10
  
  #contains the subset of elements
  #which are greater than 10
  x[use]
  
}

#
# n defaults to 10. If n param left off
# the default value is used
#
above <-function(x,n=10) {
  #variable use holds a True/False vector of
  #which values in x are greater than n
  use <- x > n
  
  #contains the subset of elements
  #which are greater than n
  x[use]
  
}

#y param is a dataframe (aka a matrix)
#and want to figure out the 'mean'
#nc == number of columns

columnmean <-function(y, removeNA=TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] = mean(y[,i],na.rm=removeNA)
  }

  means
}
