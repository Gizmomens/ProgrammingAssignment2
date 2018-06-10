

## THis functions creates the required special object

makeCacheMatrix <- function(x = matrix()) 
{
        
        i <- NULL
        
        set <- function(matrix)
        {
                x <- matrix
                i <- NULL
        }
        
        get <- function()
        {
                x
        }
        
        setInverse <- function(inv) 
        {
                i <<- inv
        }

  
        getInverse <- function() 
        {
                
                i
        }

        ## Return LIST
        list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Calculates the inverse of the matrix but checks to see if it's already been calculated before

cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()

        
        if( !is.null(i) ) 
        {
            message("getting cached data")
            return(i)
        }

        data <- x$get()

        i <- solve(data) %*% data

        x$setInverse(i)

        m
}
