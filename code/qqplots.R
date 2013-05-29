n <- 10

x <- sort(rnorm(n))
y <- sort(rnorm(n))
qqplot(x, y)
abline(lm(y~x))