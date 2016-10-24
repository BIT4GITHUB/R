#实验一
#question1
n <-50
p <-0.5
t <-0
g <-rbinom(n,1,p)
for(i in 1:n)
  if(g[i]==1) t<-t+1
print(abs(t/n-p))
#question2
n <-50
m <-100
p <-0.5
k <-0
e <-0.05
for(j in 1:m){
  t <-0
  g <-rbinom(n,1,p)
  for(i in 1:n)
    if(g[i]==1) t<-t+1
  if(abs(t/n-p)>=e) k<-k+1
}
print(k/m)


#shiyan2
#question1
n <-50
p <-0.2
g <-rbinom(n,n,p)
y <-sum(g)
y2 <-(y-n*p)/((n*p)*(1-p))^(1/2)
#question2
par(mfrow=c(1,1))
n <-50
p <-0.2
x <-c(1:100000)
for(i in 1:100000){
  g <-rbinom(n,n,p)
  y <-sum(g)
  x[i] <-(y-n*p)/((n*p)*(1-p))^(1/2)
}
hist(x,col = 'lightblue',xlim = c(min(x),max(x)),
     nclass = max(x)-min(x)+1,freq = F)
lines(density(x,bw=2.5),col='red',lwd=2.5)


#实验三
n <-1000
p <-.5
g <-rbinom(n,1,p)
sum1 <-sum(g)
if((n-sum1)>521) print(n-sum1)
#question
n <-1000
p <-.5
N <-c(100,300,500,700,1000)
k <-c(0,0,0,0,0)
h <-c(0,0,0,0,0)
for(j in 1:5)
  for(i in 1:N[j]){
    g <-rbinom(n,1,p)
    sum1 <-sum(g)
    if((n-sum1)>521) k[j]<-k[j]+1
    h[j]<-k[j]/N[j]
  }