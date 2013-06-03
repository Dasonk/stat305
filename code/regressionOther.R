n <- 10
x <- runif(n)
y <- rnorm(n)

plot(x, y)
abline(lm(y~x))


n <- 30
x <- seq(n)
y <- .1*(x-mean(x)+3)^2 + 5 + rnorm(n)

plot(x,y)

abline(lm(y~x))