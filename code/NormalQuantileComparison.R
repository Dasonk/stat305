p <- seq(.01, .99, .01)

true <- qnorm(p)
approx <- 4.9*(p^.14 - (1-p)^.14)

plot(true, approx)

o <- lm(true ~ approx)
o

plot(p, approx)
curve(qnorm, add = T, col = "red")