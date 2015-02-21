## Put comments here that give an overall description of what your
## functions do

## makecachematrix creates a list to 1) set the matrix, 2) get the matrix, 3) set the inverse, 4) get the inverse 

makeCacheMatrix <- function(x = matrix()) {
  I<- NULL
  set <- function(y){
    x<<-y
    I<<-Null
  }
  get <-function() x
  setinverse <- function(inverse) m<<-inverse
  getinverse <- function() I
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function outputs the inverse matrix of x if it has already been calculated and stored, 
# otherwise it calculates using solve() and prints it.


cacheSolve <- function(x, ...) {
        I<-x$getinverse()
        if(!is.null(I)){
            message("Getting Cached data")
            return(I)
        }
        Input <- x$get()
        I <- solve(input,...)
        x$getinverse(I)
        I
}
