## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Makes special matrix :-)
makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinvert <- function(invert) m <<- invert
  getinvert <- function() m
  list(set = set, get = get,
       setinvert = setinvert,
       getinvert = getinvert)
  
};
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  ## get invert
  m <- x$getinvert();
  #check if value exist in cashe
  if(!is.null(m)) {    
    message("getting cached data");
    return(m);
  }else{
    #ger data
    data <- x$get();
    #solve invert
    m <- solve(data, ...);
    #store invert
    x$setinvert(m);
    #return invert
    return(m);
  };  
};
