#list
l <-list("a",2,10L,3+4i,TRUE)

l2 <-list(a=1,b=2,c=3)

l3 <-list(c(1,2,3),c(4,5,6,7))

x=matrix(1:6, nrow =2, ncol =3)

dimnames(x) <- list(c("a","b"),c("c","d","e"))  #为列表命名

#factor

x <-factor(c("female","male","female","male"))

y <-factor(c("female","male","female","male"),levels=c("male","female")) #通过levels确定水平

table(x)

unclass(x)

class(unclass(x))

#make sunsets
x<-1:10
x[1]
names(x) <-c("a","b","c","d")

#the subsets of matrix
x <-matrix(1:6,nrow = 2,ncol=3)
x[1,2]
x[1,]
class(x[1,2])
x[1,2,drop=FALSE]

#the subsets of data.frame
x<- data.frame(v1=1:5,v2=6:10,v3=11:15)
x$v3[c(2,4)]<-NA
x[(x$v1<4 & x$v2>=8),]
which(x$v1>2)  #note the uasge of the "which"
x$v1>2
subset(x,x$v1>2)

#the subseting of list
x <- list(id=1:4, height=170, gender="male")
x[1]
x["id"]
x[[1]]
x$id
x[c(1,3)]
y <-"id"
x[["id"]]
x[[y]]

#subsetting nested elements of a list

x<- list(a= list(1,2,3,4), b = c("Monday","Tuesday"))
x[[1]]
x[[1]][[2]]
x[[1]][2]
x[[c(1,3)]]
x[[c(2,2)]]

#partial matching

l <-list(asdgjaskd=1:10)
l$asdgjaskd
l$a
l[["a"]]
l[["a",exact =FALSE]]
l[["a",exact =TRUE]]
l <-list(asdgjaskd=1:10 ,b=1:2 ,aaa=3:5)
x$a

#missing value
x <-c(1,NA, NA ,3)
is.na(x)
x[!is.na(x)]
x <-c(1,NA, 2, NA, 3)
y <-c("a","b",NA,"c",NA)
z <-complete.cases(x,y)
x[z]
y[z]
library(datasets)
head(airquality)
g <- complete.cases(airquality)   #remove the mising value
airquality[g,][1:10,]

#Vectorized
x <-1:5
y <-6:10
x+y
x*y
x <-matrix(1:4,nrow = 2,ncol = 2)
y <-matrix(rep(2,4),nrow = 2,ncol = 2)   #"rep(a,b) means repet "a" for "b" times
x*y
x/y
x %*% y  #matrix times matrixs




