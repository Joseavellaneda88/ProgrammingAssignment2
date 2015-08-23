## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrixch <- NULL
  set <- function(y) {
    x <<- y
    matrixch <<- NULL
  }
  get <- function() x
  setMa <- function(inverse) matrixch <<- inverse
  getinverse <- function() matrixch
  list(set = set, get = get,
       setMa = setMa,
       getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  matrixch <- x$getinverse()
  if(!is.null(matrixch)) {
    message("getting cached data")
    return(matrixch)
  }
  data <- x$get()
  matrixch <- solve(data, ...)
  x$setMa(matrixch)
  ## Return a matrix that is the inverse of 'x'
  matrixch
}
