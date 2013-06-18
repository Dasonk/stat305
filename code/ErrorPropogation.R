f <- function(){
    # Simulate values for the resistors
    
    # R_i ~ N(100, sqrt(2)^2) : E[R_i] = 100, Var[R_i] = 2
    R <- rnorm(3, 100, sqrt(2))
    
    # R_i ~ Unif(100-sqrt(6), 100 + sqrt(6)), E[x]=100, Var(x) = 2
    #R <- runif(3, 100 - sqrt(6), 100 + sqrt(6))
    
    ans <- R[1] + (R[2]*R[3])/(R[2] + R[3])
    
    # Return the calculated vlue
    ans
}

out <- replicate(10000, f())

mean(out)
var(out)