n <- 10
par(mfrow = c(3,3))
for(i in 1:9){
  x <- sort(rnorm(n))
  y <- sort(rnorm(n))
  qqplot(x, y)
  abline(lm(y~x))
}
layout(1)
title(paste("qqplots - Both samples from normal. n =", n))

n <- 30
par(mfrow = c(3,3))
for(i in 1:9){
  x <- sort(rnorm(n))
  y <- sort(rnorm(n))
  qqplot(x, y)
  abline(lm(y~x))
}
layout(1)
title(paste("qqplots - Both samples from normal. n =", n))

n <- 1000
par(mfrow = c(3,3))
for(i in 1:9){
  x <- sort(rnorm(n))
  y <- sort(rnorm(n))
  qqplot(x, y)
  abline(lm(y~x))
}
layout(1)
title(paste("qqplots - Both samples from normal. n =", n))

n <- 10
par(mfrow = c(3,3))
for(i in 1:9){
  x <- sort(rnorm(n))
  y <- sort(rexp(n))
  qqplot(x, y)
  abline(lm(y~x))
}
layout(1)
title(paste("qqplots - Sample 1: normal, Sample 2: exponential. n =", n))


n <- 30
par(mfrow = c(3,3))
for(i in 1:9){
  x <- sort(rnorm(n))
  y <- sort(rexp(n))
  qqplot(x, y)
  abline(lm(y~x))
}
layout(1)
title(paste("qqplots - Sample 1: normal, Sample 2: exponential. n =", n))


n <- 1000
par(mfrow = c(3,3))
for(i in 1:9){
  x <- sort(rnorm(n))
  y <- sort(rexp(n))
  qqplot(x, y)
  abline(lm(y~x))
}
layout(1)
title(paste("qqplots - Sample 1: normal, Sample 2: exponential. n =", n))


