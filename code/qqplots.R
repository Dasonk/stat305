n <- 30

x <- sort(rnorm(n))
y <- sort(rexp(n))
qqplot(x, y)
abline(lm(y~x))