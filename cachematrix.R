## Function which cache's matrix inverse


makeCacheMatrix  <- function(x = matrix()) {
 ## create output as a matrix ##
  m <- NULL
  
### set the value of the matrix ###
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

## get the inverse of matrix##
 get <- function() x 
  
  
### set the value of the inverse of the matrix ###  
  setsolve <- function(solve) m <<- solve 
### get the value of the inverse of the matrix ###
  getsolve <- function() m
  
  ###list the results ###
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve) 
}
## Function which displays the cached inverse matrix ##

cacheSolve <- function(x, ...) {
  
  ### from the list in the above formula get the value of the inverse matrix###
  m <- x$getsolve()
 
  ### ensure error message if matrix is null ###
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
