## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  r <- NULL
  set <- function(y){
    x <<- y
    r <<- NULL
  }
  get <- function() x
  setrevers <- function(slv) r <<- slv
  getrevers <- function() r
  list(set = set, get = get,
       setrevers = setrevers,
       getrevers = getrevers)
}



## Write a short comment describing this function


cacheSolve <- function(x,...){
  r <- x$getrevers()
  if(!is.null(r)){
    message("getting cached solve")
    return(r)
  }
  data <- x$get()
  r <- solve(data,...)
  x$setrevers(r)
  r
}
