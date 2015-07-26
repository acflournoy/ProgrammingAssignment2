## These functions will calculate and cache the inverse of a matrix

## The makeCacheMatrix function creates a matrix that
## includes a list with functions to cache the inverse
## of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<-NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## The cacheSolve function caclulates the inverse of the
## matrix created by makeCacheMatrix. If the inverse is already
## calculated, it pulls the inverse from the cache

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
