## Caches the inverse of a matrix, if is not found it computes it 

## creates a matrix object to cache its inverse

makeCacheMatrix <- function(z = matrix()) {
      matrixN <- NULL
      set <- function(y) {
            z <<- y
            matrixN <<- NULL
      }
      get <- function() z
      setmatrix <- function(solve) matrixN <<- matrix                                                        
      getmatrix <- function() matrixN
      list(set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
}




## Computes the inverse of the matrix returned by makeCacheMatrix, if the 
## inverse has already been calculated, it retrives the inverse from the cache

cacheSolve <- function(z, ...) {
      matrixN <- z$getmatrix()
      if(!is.null(matrixN)) {
            message("getting cached data")
            matrixN
      }
      data <- z$get()
      matrixN <- solve(data, ...)
      z$setmatrix(matrixN)
      matrixN

        ## Return a matrix that is the inverse of 'x'
}
