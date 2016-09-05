## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The makeCacheMatrix creates a matrix object by setting the value of the matrix.
## It also get the values of the matrix, and set and get the values of the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y)
{
x <<- y
inv <<- NULL
}
get <-funtion() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function.
## The cacheSolve function returns the inverse of the matrix.
## If the inverse is already solved, then the function would retrieve the inverse and not solve for it.
## If the inverse does not exist, then the function would solve for the inverse and set the value in the cache using the setinverse function.
cacheSolve <- function(x, ...) {
inv <-x$getinverse()
if(!is.null(inv){
message("getting cached data")
return(inv)
}
data <-x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
}
