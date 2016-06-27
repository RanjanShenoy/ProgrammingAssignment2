## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(inverse = matrix()) { #makeCacheMatrix returns a list which contains existing inverse in cache or updates cache with new inverse value. It also initializes the matrix value
        check <- NULL		#check saves the value of the inverse in cache
        set <- function(var) {		#initialize the matrix
                inverse <<- var
                check <<- NULL
        }
        get <- function() inverse	#returns the value of matrix
        setinverse <- function(solve) check <<- solve # Sets the value to computed value
        getinverse <- function() check		#Returns the inverse value of the matrix
        list(set = set, get = get,		#Return the matrix or inverse in the form of a list to CacheSolve function
             setinverse = setinverse,
             getinverse = getinverse)
}
cacheSolve<-function(inverse,...) #cacheSolve computes the inverse value with solve() function on the list returned from makeCacheMatrix if the cache does not contain inverse already.
{
check<-inverse$getinverse()
if(!is.null(check)) return(check)       #check if the inverse value exists in cache
data<-inverse$get()		# obtain the matrix function for which inverse is to be determined
check<-solve(data)		# generates the inverse	
inverse$setinverse		# stores the inverse in cache
check
}