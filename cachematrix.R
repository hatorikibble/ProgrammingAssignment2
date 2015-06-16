## Coursera Programming Assignment 2
## caching the inverse of a matrix

## makeCacheMatrix(x)
# create a matrix object, with the following functions
# * get - return the matrix data
# * set - update the matrix data
# * setinverse - save value in cache
# * getinverse - retriev value from cache

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  get <- function() x
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  
  list(get = get, set = set, setinverse = setinverse, getinverse = getinverse )
}


## cacheSolve(x)
# Return a matrix that is the inverse of 'x'
# the result is then cached and used
# if the function is run again on the same matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  matrix <- x$get()
  i <- solve(matrix)
  x$setinverse(i)
  i
}

####################

# Test cf.: https://class.coursera.org/rprog-015/forum/thread?thread_id=447

# m <- matrix(c(-1, -2, 1, 1), 2,2)
# x <- makeCacheMatrix(m)
# x$get()
# [,1] [,2]
# [1,]   -1    1
# [2,]   -2    1
# 
# inv <- cacheSolve(x)
# inv
# [,1] [,2]
# [1,]    1   -1
# [2,]    2   -1
# 
# > inv <- cacheSolve(x)
# getting cached data
# > inv
# [,1] [,2]
# [1,]    1   -1
# [2,]    2   -1
