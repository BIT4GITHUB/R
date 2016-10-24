#ʵ��һ������ֲ���
p <-0.2
k <-seq(0,25)
plot(k,pbinom(k,20,p),ylim=c(0,1),lwd="2",type = "l",col='blue',
     main = '����ֲ��ķֲ�����',xlab = "k")
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

#ʵ���
x<-seq(1,10)
dpois(x,1)    #��=1�Ĳ��ɺ���
  dpois(x,2)    #��=2�Ĳ��ɺ���
  dpois(x,3)    #��=3�Ĳ��ɺ���
  dpois(x,6)    #��=6�Ĳ��ɺ���
  plot(x,dpois(x,1),type="o",col="red")
lines(x,dpois(x,2),type="o",col="green")
lines(x,dpois(x,3),type="o",col="blue")
lines(x,dpois(x,6),type="o",col="black")  #�Ѽ����������ϵ�һ�𣬲��ò�ͬ��ɫ�����
  legend("topright",
         title="�� value",
         c("1","2","3","6"),   
         lwd=c(1,1,1,1),
         col=c("red","green","blue","black")
  )

#ʵ����nrom distrubution�ܶȺ����̶�uֵ
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

#�ֲ�����
curve(pnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,1),col='red',lwd=2.5)
curve(pnorm(x,0,2),add = T,col='blue',lwd=2.5)
curve(pnorm(x,0,1/2),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend("topleft",xjust = 1,
       c('sigma=1','sigma=2','sigma=1/2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))
#�̶�sigmaֵ
curve(dnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,.7),col='red',lwd=2.5)
curve(dnorm(x,-2,1),add = T,col='blue',lwd=2.5)
curve(dnorm(x,2,1),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend("topleft",xjust = 1,
       c('��=0','��=-2','��=2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))
#�ֲ�����
par(mfcol=c(1,1))
curve(pnorm(x,0,1),xlim = c(-5,5),
      ylim= c(0,1),col='red',lwd=2.5)
curve(pnorm(x,-2,1),add = T,col='blue',lwd=2.5)
curve(pnorm(x,2,1),add = T,lwd=2.5)
title(main = "Gaussion distrubutions")
legend("topleft",xjust = 1,
       c('��=0','��=-2','��=2'),
       lwd = c(2.5,2.5,2.5),
       col = c('red','blue',par("fg")))

#ʵ����
x<-seq(1,40)
y<-dbinom(x,40,0.2)
z<-dpois(x,8)
rbind(y,z)  #�Աȶ���ԭ�����벴�ɱƽ�


#ʵ����
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

#�߶��ٶ�������(��һ��)
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

##�߶��ٶ�������(�ڶ���)
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