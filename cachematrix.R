## Put comments here that give an overall description of what your
## functions do

# [ML]: First, the same as the example, I created a function that creates a special matrix. Then, the second function will allow
# to calculate the inverse of the matrix in case this is different from the original. Otherwise, it retrieves the one calculated
# initially.

## Write a short comment describing this function

# [ML]: I created a function that allows creating a special matrix. The properties are the same as example which means it 
# allows setting and getting the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
  
}

## Write a short comment describing this function

# [ML]: I created a function that in case the matrix has changed, it calculates the inverse of this new one. Otherwise, 
# it retriveves the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
  
}


