## Function which cache's matrix inverse

## create output as a matrix ##
makeCacheMatrix  <- function(x = matrix()) {
  m <- NULL
  }
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

## get inverse of matrix and remember value ##
  get <- function() x 
  setsolve <- function(solve) m <<- solve 
### solve is the function in which to get an inverse matrix ###
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve) 
}


## Function which displays the cached inverse matrix

cacheSolve <- function(x, ...) {
  
  ### from the list in the above formula get the values assosiated with getsolve###
  m <- x$getsolve()
 
  ###ensure error message is m matrix is null as can't solve a null matrix ###
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  #### get output of the cached matrix ####
  
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
