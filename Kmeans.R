mydata <-read.delim("clipboard")
library(stats)
km.out <-kmeans(mydata,3,nstart = 1L)
km.out

