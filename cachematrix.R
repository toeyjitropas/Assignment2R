## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
if (sqrt(length(x))%%1==0){
inv <- NULL
set <- function(y){
x <<- y
inv <- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}
else {
message("Matrix is not Square")
}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
message("getting cache data.")
return(inv)
}
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv
}
