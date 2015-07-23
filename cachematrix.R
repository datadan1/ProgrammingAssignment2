## Put comments here that give an overall description of what your
## functions do
  #Set the value of the matrix
  #get the value of the matrix
  #set the value of the matrix inverse solve(x)
  #get the value of the matrix inverse
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function(solve) m
    list(set = set, get = get, setsolve=setsolve,getsolve=getsolve)
    }
## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve
    #print(x$getsolve)
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    #print(x$get())
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
