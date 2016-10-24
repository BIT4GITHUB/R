#实验一（二项分布）
p <-0.2
k <-seq(0,25)
plot(k,pbinom(k,20,p),ylim=c(0,1),lwd="2",type = "l",col='blue',
     main = '二项分布的分布函数',xlab = "k")
p <-0.2
k <-seq(0,25)
plot(k,dbinom(k,20,p),ylim=c(0,0.3),lwd="2",type = "l",
     main = "Binomial distrubution",xlab = "k")
lines(k,dbinom(k,10,p),lwd="2.5",type = "l",
      xlab = "k",col="red")
lines(k,dbinom(k,30,p),lwd="2.5",type = "l",
      xlab = "k",col="green")
lines(k,dbinom(k,50,p),lwd="2.5",type = "l",
      xlab = "k",col="blue")
legend("topright", title = "n value",c("10","20","30","50"),
       lwd=c(2.5,2,2.5,2.5),col=c("red","black","green","blue"))

#实验二
x<-seq(1,10)
dpois(x,1)    #λ=1的泊松函数
  dpois(x,2)    #λ=2的泊松函数
  dpois(x,3)    #λ=3的泊松函数
  dpois(x,6)    #λ=6的泊松函数
  plot(x,dpois(x,1),type="o",col="red")
lines(x,dpois(x,2),type="o",col="green")
lines(x,dpois(x,3),type="o",col="blue")
lines(x,dpois(x,6),type="o",col="black")  #把几个函数整合到一起，并用不同颜色标出来
  legend("topright",
         title="λ value",
         c("1","2","3","6"),   
         lwd=c(1,1,1,1),
         col=c("red","green","blue","black")
  )

#实验三nrom distrubution密度函数固定u值
par(mfcol=c(1,1))
curve(dnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,.8),col='red',lwd=2.5)
curve(dnorm(x,0,2),add = T,col='blue',lwd=2.5)
curve(dnorm(x,0,1/2),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend(par('usr')[2],par('usr')[4],xjust = 1,
       c('sigma=1','sigma=2','sigma=1/2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))

#分布函数
curve(pnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,1),col='red',lwd=2.5)
curve(pnorm(x,0,2),add = T,col='blue',lwd=2.5)
curve(pnorm(x,0,1/2),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend("topleft",xjust = 1,
       c('sigma=1','sigma=2','sigma=1/2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))
#固定sigma值
curve(dnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,.7),col='red',lwd=2.5)
curve(dnorm(x,-2,1),add = T,col='blue',lwd=2.5)
curve(dnorm(x,2,1),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend("topleft",xjust = 1,
       c('μ=0','μ=-2','μ=2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))
#分布函数
par(mfcol=c(1,1))
curve(pnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,1),col='red',lwd=2.5)
curve(pnorm(x,-2,1),add = T,col='blue',lwd=2.5)
curve(pnorm(x,2,1),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend("topleft",xjust = 1,
       c('μ=0','μ=-2','μ=2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))

#实验四
x<-seq(1,40)
y<-dbinom(x,40,0.2)
z<-dpois(x,8)
rbind(y,z)  #对比二项原函数与泊松逼近


#实验五
par(mfcol=c(1,2))
x1 <-runif(1000,min = 0,max = 1)
x2 <-runif(1000,min = 0,max = 1)
z <-x1+x2
g <-z
for(i in 1:1000){
  g[i]=ifelse(z[i]>=0&&z[i]<=1,z[i],2-z[i]);
}
hist(g,col = 'red')
hist(z,col = "blue")


#service windows
n <-100
s <-10
for(m in 1:10){
  k <-0
  p <-rbinom(100,n,.6)
  for(j in 1:100)
    if(p[j]<=s*m) k<-k+1
  if(k/100>=0.8){
    print(m) 
    break
  } 
}
  

for(k in 1:n)
  if(p>=0.8) print(k)

#高尔顿钉板试验(第一问)
par(mfrow=c(2,2))
n=5000;
h <-c(1:5000)
for(i in 1:5000)
  h[i]=0
for(j in 1:5000){
  g<-rbinom(20,1,0.85)
  for(i in 1:20)  ifelse(g[i]==0,h[j]<-(h[j]-1),h[j]<-h[j]+1)
}
hist(h,main = 'Histogram of H(p=0.15)',col = 'red')
n=5000;
h <-c(1:5000)
for(i in 1:5000)
  h[i]=0
for(j in 1:5000){
  g<-rbinom(20,1,0.5)
  for(i in 1:20)  ifelse(g[i]==0,h[j]<-(h[j]-1),h[j]<-h[j]+1)
}
hist(h,main = 'Histogram of H(p=0.5)',col = 'blue')
n=5000;
h <-c(1:5000)
for(i in 1:5000)
  h[i]=0
for(j in 1:5000){
  g<-rbinom(20,1,0.15)
  for(i in 1:20)  ifelse(g[i]==0,h[j]<-(h[j]-1),h[j]<-h[j]+1)
}
hist(h,main = 'Histogram of H(p=0.85)',col = 'gray')

##高尔顿钉板试验(第二问)
par(mfrow=c(2,2))
n=1000
h <-c(1:n)
for(i in 1:n)
  h[i]=0
for(j in 1:n){
  g<-rbinom(20,1,0.7)
  for(i in 1:20)  ifelse(g[i]==0,h[j]<-(h[j]-1),h[j]<-h[j]+1)
}
hist(h,col = 'lightblue',main = 'n=1000',freq = F)
lines(density(h,bw=2),col='red',lwd=3)
n=10000
h <-c(1:n)
for(i in 1:n)
  h[i]=0
for(j in 1:n){
  g<-rbinom(20,1,0.7)
  for(i in 1:20)  ifelse(g[i]==0,h[j]<-(h[j]-1),h[j]<-h[j]+1)
}
hist(h,col = 'red',main = 'n=10000',freq = F)
lines(density(h,bw=2),col='blue',lwd=2)
n=100000
h <-c(1:n)
for(i in 1:n)
  h[i]=0
for(j in 1:n){
  g<-rbinom(20,1,0.7)
  for(i in 1:20)  ifelse(g[i]==0,h[j]<-(h[j]-1),h[j]<-h[j]+1)
}
hist(h,col = 'blue',main = 'n=100000',freq = F)
lines(density(h,bw=2),col='red',lwd=2)
