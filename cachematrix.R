## these two functions chache the inverse of a matrix

## first function creates a matrix that can cache its matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ## get the matrix
  get <- function() {
    m
  }
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  getInverse <- function() {
    i
  }
  
  ## Return methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## find inverse of the matrix returned by makeCacheMatrix function, shows inverse from the cache if inverse has been found 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  m
}

