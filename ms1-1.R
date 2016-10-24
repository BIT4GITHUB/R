#p为样本均值，a为样本值，s为样本方差，
s<-0
n<-100
a<-rnorm(n,5,1)
p <-mean(a)
q <-sd(a)
#重复进行五次实验
p <-c(0,0,0,0,0)
q<-c(0,0,0,0,0)
for(j in 1:5)                 
{
  n<-100
  a<-rnorm(n,1,5)
  p[j]<-mean(a)
  q[j]<-sd(a)
}