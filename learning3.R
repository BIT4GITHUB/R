#important function
#lapply—≠ª∑
str(lapply)
x <- list(a=1:10, b=c(11,21,31,41,51))
lapply(x, mean)

x <-1:4
lapply(x, runif)
lapply(x, runif, min=0, max=100)

x <-list(a=matrix(1:6, 2,3), b=matrix(4:7, 2,2))
lapply(x, function(m) m[1,])    #definition your own function

#sapply
x <- list(a=1:10, b=c(11,21,31,41,51))
lapply(x, mean)
sapply(x, mean)

#apply
x <-matrix(1:16, 4,4)
apply(x, 2, mean)
apply(x, 2, sum)
apply(x, 1, mean)
apply(x, 1, sum)
rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

x <-matrix(rnorm(100), 10,10)
apply(x, 1, quantile, probs=c(0.25,0.75))



