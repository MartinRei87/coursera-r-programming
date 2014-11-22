# Create several functions that can cache the inverse of a matrix

makeCacheMatrix <- function( m = matrix() ) {

		# Initialize inverse property
		i<-NULL

		# Setting the matrix
		set<-function( matrix ) {
			m<<-matrix
			i<<-NULL
	}
		# Function to get the matrix
		get<-function() {

		# Return matrix
		m
	}

		# Method to set inverse of the matrix
		setinverse<-function(inverse) {
		i<<-inverse
	}

		# Function to get inverse of the matrix
		getinverse<-function() {

		# Return inverse property
	i
	}

		# Return list of the methods
		list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
	}

		# Create inverse of the matrix returned by "makeCacheMatrix"-function
		"cacheSolve" retrieves inverse from cache
		cacheSolve<-function(x, ...) {

		# Return matrix that is inverse of 'x'
		m<-x$getinverse()

		# Returns inverse if its already set
		if(!is.null(m)) {
		message("cached data")
		return(m)
		}

		# Get matrix object
		data<-x$get()
	
		# Calculate inverse using multiplication of matrices
		m<-solve(data)%*%data
	
		# Set inverse to our object
		x$setInverse(m)

		# Finally return matrix
		m
}
