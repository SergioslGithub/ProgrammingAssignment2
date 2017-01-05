## ***Firstly I'm sorry if there are any gramatical or orthographic mistake in comments.***
## As regards these functions create and rename a matrix and its invers from cache.

## mackeCacheMatrix function is an elaborate fuction wich runs four functions.
## 1.Set function: Which stores the matrix in cache
## 2.Get function: Which recalls the matrix.
## 3.setInverse: Which set inverse matrix.
## 4.getInverse: Wich set inverse from the original matrix.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){
  x <<- y
  m <<- NULL
}
get <- function() x
setInverse <- function(solve) m<<- solve
getInverse <- function() m
list(set = set, get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}


## cacheSolve function take a mackeCacheMatrix functio checks if the calculation has been made,
## before and then calculates the inverse of it.
## If it has been made it before rename the data from the cache but if it hasn't been made it
## doesn't do it.

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
m <- x$getInverse()
if(!is.null(m)){
  message("getting cached data")
  return(m)
}
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  }
