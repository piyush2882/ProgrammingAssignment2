## There are two functions in this script makeCacheMatrix(x) and cacheSolve(x). 
## The makeCacheMatrix(x) stores the inverse of a matrix in cache.
## The cacheSolve(x) retrieves from cache or calculates the inverse of a matrix. 


## Cache object defined in global environment
inverse <- NULL

## The function makeCacheMatrix(x) takes a matrix and stores its inverse in a cache
## object 'inverse' defined above.
makeCacheMatrix <- function(x = matrix()) {
  
  inverse <<- solve(x)
  message("stored inverse in cache")
}


## The function cacheSolve(x) takes a matrix and retrieves its inverse from the cache
## object 'inverse' and returns the same. If the value in the object 'inverse' is NULL 
## the inverse is calculated and returned.

cacheSolve <- function(x = matrix()) {
  
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  ## Return a matrix that is the inverse of 'x'
  return(solve(x))
}
