## This script contains functions that - make a matrix and caches its state, and gets the inverse of a matrix

## the function below creates a list that contains a matrix, its inverse, and functions to set and get its inverse 

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() {
		x
	}
	setinverse <- function(inv) {
		m <<- inv
	}
	getinverse <- function() {
		m 
	}
	list( set = set, 
		get = get, 
		setinverse = setinverse,
		getinverse = getinverse
	)
}


## the function below first checks to see if inverse of a matrix x is calculated, if not it will calculate the inverse and return the result

cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if (! is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	return(m)
}
