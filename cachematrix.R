
##This is the code that will cache the inverse of the given matrix, best use to save time
## the function will be able to save time computing inverses of given matrix. cacheMatrix cache the matrix and the inverse will be acquired


makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
 x<<-y
 inv<<-NULL
}
get <- function(){x}
setInverse <- function(inverse){inv<<-inverse}
getInverse <- function(){inv}
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
        
}

## cacheSolve code will get the inverse of the given matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <-x$getInverse()
   if(!is.null(inv){
       message("getting cached data")
       return(inv)
}  
mat <-x$get()
inv <- solve(mat,...)
x$getInverse(inv)
inv
}

