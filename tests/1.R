test.cachematrix <- function()
{
 
 m <- matrix(c(-1, -2, 1, 1), 2,2)
 x <- makeCacheMatrix(m)
 inv <- cacheSolve(x)

 checkIdentical(inv,matrix(c(1, 2, -1, -1), 2,2))
}
