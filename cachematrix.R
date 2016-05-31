## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function creates a special "matrix" object that can cache its inverse
## The function sets and gets the matrix and then does the same for the inverse

makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
        set = function(y) {
                x <<- y
                inv <<- NULL
        }
        get = function() x
        setinv = function(inverse) inv <<- inverse 
        getinv = function() inv
                list(set = set,
                        get = get,
                        setInverse = setInverse,
                        getInverse = getInverse)
}


## Write a short comment describing this function
## The function returns a matrix that is the inverse of the original input to makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv = x$getinv()
        if (!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat.data = x$get()
        inv = solve(mat.data, ...)
             x$setinv(inv)
                return(inv)
}
