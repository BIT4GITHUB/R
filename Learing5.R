png(filename = "daodan.png", width = 480, height = 480, units = "px")
mydata <-read.delim("clipboard")
plot(mydata$lin2,mydata$lin3,xlab ="X",ylab ="Y")
x <-c(0:0.1:70)
z <-0.548653*(x-8.5)+16.7
w <-0.543201*(x-47.6)+25.6
lines(x,z,type = "l",lwd=2,col="blue")
lines(x,w,type = "l",lwd=2,col="red")
x <-c(0:0.1:70)
y <-0.557808*x+24.5-58.4*0.557808
lines(x,y,lwd=2,col="red")
x <-c(0:0.1:70)
y <-0.548108*x+45.3-60.1*0.548108
lines(x,y,lwd=2,col="blue")




x <-c(0:0.1:70)
z <-0.5487*(x-8.5)+16.7
w <-0.5432*(x-47.6)+25.6
lines(x,z,type = "l",lty=1,col="blue")
lines(x,w,type = "l",col="red")
x <-c(0:0.1:70)
y <-0.557808*x+24.5-58.4*0.557808
lines(x,y,lwd=2,col="red")
x <-c(0:0.1:70)
y <-0.548108*x+45.3-60.1*0.548108
lines(x,y,lwd=2,col="blue")
x <-c(40.8,47.6,31.3,32.7,6.5)
y <-c(5.7,17.1,25.9,37.3,40.4)
x <-c(40.8,47.6,31.3,32.7,6.5)
y <-c(5.7,17.1,25.9,37.3,40.4)
points(x,y,pch=15,col="blue")
mydata <-read.delim("clipboard")
x <-mydata$lin2
y <-mydata$lin3
lines(x,y,lwd=3,lty=5,col="black")





x <-c(59.9,59.0,53.2,45.8,40.8)
y <-c(10.4,6.5,5.2,7.1,5.7)
lines(x,y,lwd=2.5,col="blue")
x <-c(52.7,47.4,45.8,40.8)
z <-c(10.1,11.9,7.1,5.7)
lines(x,z,lwd=2.5,col="red")
x <-c(46.7,45.8,40.8)
w <-c(2.3,7.1,5.7)
lines(x,w,lwd=2.5,col="yellow")
x <-c(47.6,52.3,44.9,47.6)
y <-c(25.6,23.4,19.9,17.1)
lines(x,y,lwd=2.5,col="black")
x <-c(20.5,21.6,22.7,26.3,33.3,37.5,31.3)
z <-c(14.7,20.5,24.8,25.3,30.1,27.4,25.9)
lines(x,z,lwd=2.5,col="green")
x <-c(42.5,44.9,39.2,37.5,31.3)
w <-c(26.5,19.9,20.2,27.4,25.9)
lines(x,w,lwd=2.5,col="pink")
x <-c(40.3,36.4,33.3,37.5,31.3)
y <-c(33.3,31.7,30.1,27.4,25.9)
lines(x,y,lwd=2.5,col="gray")
x <-c(44.7,42.4,37.5,31.3)
z <-c(35.1,30.6,27.4,25.9)
lines(x,z,lwd=2.5,col="orange")
x <-c(60.1,53.2,47.2,45.4,42.0,32.7)
w <-c(45.3,43.7,45.4,44.0,41.5,37.3)
lines(x,w,lwd=2.5,col="purple")
x <-c(18.5,19.1,25.1,27.1,32.7)
y <-c(36.2,42.0,39.1,34.2,37.3)
lines(x,y,lwd=2.5,col="blue")
x <-c(48.5,42.7,45.4,42.0,32.7)
z <-c(50.8,45.4,44.4,41.5,37.3)
lines(x,z,lwd=2.5,col="red")
x <-c(1.2,6.5,6.5)
w <-c(34.3,33.1,40.4)
lines(x,w,lwd=2.5,col="yellow")







x <-c()
z <-c()
lines(x,z,lwd=2.5,col="green")
x <-c()
w <-c()
lines(x,w,lwd=2.5,col="pink")
x <-c()
y <-c()
lines(x,y,lwd=2.5,col="gray")
x <-c()
z <-c()
lines(x,z,lwd=2.5,col="orange")
x <-c()
w <-c()
lines(x,w,lwd=2.5,col="purple")
x <-c()
y <-c()
lines(x,y,lwd=2.5,col="blue")
x <-c()
z <-c()
lines(x,z,lwd=2.5,col="red")
x <-c()
w <-c()
lines(x,w,lwd=2.5,col="yellow")
x <-c(64.6,59.0,53.2,45.8,40.8)
y <-c(4.3,6.5,5.2,7.1,5.7)
lines(x,y,lwd=2.5,col="blue")
x <-c(25.2,34.9,40.8)
z <-c(3.0,3.8,5.7)
lines(x,z,lwd=2.5,col="red")
x <-c(28.8,34.9,40.8)
w <-c(7.1,3.8,5.7)
lines(x,w,lwd=2.5,col="yellow")
x <-c(58.4,53.7,52.3,44.9,47.6)
y <-c(24.5,28.5,23.4,19.9,17.1)
lines(x,y,lwd=2.5,col="black")
x <-c(36.7,36.4,33.3,37.5,31.3)
z <-c(36.2,31.7,30.1,27.4,25.9)
lines(x,z,lwd=2.5,col="green")
x <-c(56.0,50.9,47.9,42.4,37.5,31.3)
w <-c(36.7,35.7,29.7,32.6,27.4,25.9)
lines(x,w,lwd=2.5,col="pink")
x <-c(28.6,26.3,33.3,37.5,31.3)
y <-c(20.7,25.3,30.1,27.4,25.9)
lines(x,y,lwd=2.5,col="gray")
x <-c(25.5,21.6,22.7,26.3,33.3,37.5,31.3)
z <-c(16.9,20.5,24.8,25.3,30.1,27.4,25.9)
lines(x,z,lwd=2.5,col="orange")
x <-c(53.7,53.2,47.2,45.4,42.0,32.7)
w <-c(39.9,43.7,45.4,44.0,41.5,37.3)
lines(x,w,lwd=2.5,col="purple")
x <-c(34.7,36.8,34.5,42.0,32.7)
y <-c(48.9,46.6,42.7,41.5,37.3)
lines(x,y,lwd=2.5,col="blue")
x <-c(40.5,42.0,32.7)
z <-c(37.3,41.5,37.3)
lines(x,z,lwd=2.5,col="red")
x <-c(3.3,11.4,14.3,16.0,11.7,12.2,6.5)
w <-c(22.6,22.3,23.6,31.4,35.8,40.4,40.4)
lines(x,w,lwd=2.5,col="yellow")













x <-c(25.2,34.9,40.8)
y <-c(3.0,3.8,5.7)
lines(x,y,lwd=2.5,col="blue")
x <-c(28.8,34.9,40.8)
z <-c(7.1,3.8,5.7)
lines(x,z,lwd=2.5,col="red")
x <-c(64.6,59.0,53.2,45.8,40.8)
w <-c(4.3,6.5,5.2,7.1,5.7)
lines(x,w,lwd=2.5,col="yellow")
x <-c(58.4,53.7,52.3,44.9,47.6)
y <-c(24.5,28.5,23.4,19.9,17.1)
lines(x,y,lwd=2.5,col="black")
x <-c(28.6,26.3,33.3,37.5,31.3)
z <-c(20.7,25.3,34.1,27.4,25.9)
lines(x,z,lwd=2.5,col="green")
x <-c(56.0,50.9,47.9,42.4,37.5,31.3)
w <-c(34.7,35.7,29.7,30.6,27.4,25.9)
lines(x,w,lwd=2.5,col="pink")
x <-c(53.7,53.2,47.2,45.4,42.0,32.7)
y <-c(39.9,43.7,45.4,44.0,41.5,37.3)
lines(x,y,lwd=2.5,col="gray")
x <-c(25.5,21.6,22.7,20.9,27.1,32.7)
z <-c(16.9,20.5,24.8,29.1,37.2,37.3)
lines(x,z,lwd=2.5,col="orange")
x <-c(30.7,36.8,34.5,25.1,19.1,12.6,12.2,6.5)
w <-c(48.9,46.6,42.7,39.1,42.0,45.1,40.4,40.4)
lines(x,w,lwd=2.5,col="purple")
x <-c(40.5,42.0,34.5,25.1,19.1,12.6,12.2,6.5)
y <-c(37.3,41.5,42.7,39.1,42.0,45.1,40.4,40.4)
lines(x,y,lwd=2.5,col="blue")
x <-c(36.7,36.4,33.3,27.1,25.1,19.1,12.6,12.2,6.5)
z <-c(36.2,31.7,30.1,34.2,39.1,42.0,45.1,40.4,40.4)
lines(x,z,lwd=2.5,col="red")
x <-c(3.3,11.4,14.3,16.0,11.7,12.2,6.5)
w <-c(22.6,20.3,23.6,31.4,35.8,40.4,40.4)
lines(x,w,lwd=2.5,col="yellow")

























x <-c(47.6,52.3,44.9,47.6)
y <-c(25.6,23.4,19.9,17.1)
lines(x,y,lwd=1.5,col="blue")
x <-c(46.7,45.8,40.8)
z <-c(2.3,7.1,5.7)
lines(x,z,lwd=1.5,col="red")
x <-c(52.7,47.4,45.8,40.8)
w <-c(10.1,11.9,7.1,5.7)
lines(x,w,lwd=1.5,col="yellow")
x <-c(59.9,59.0,53.2,45.8,40.8)
y <-c(10.4,6.5,5.2,7.1,5.7)
lines(x,y,lwd=1.5,col="black")
x <-c(17.2,14.3,16.0,20.9,27.1,32.7)
z <-c(19.3,23.6,31.4,29.1,34.2,37.3)
lines(x,z,lwd=1.5,col="green")
x <-c(40.3,36.4,33.3,37.5,31.3)
w <-c(33.3,31.7,30.1,27.4,25.9)
lines(x,w,lwd=1.5,col="pink")
x <-c(44.7,42.4,37.5,31.3)
y <-c(35.1,30.6,27.4,25.9)
lines(x,y,lwd=1.5,col="gray")
x <-c(42.5,44.9,39.2,37.5,31.3)
z <-c(26.5,19.9,20.2,27.4,25.9)
lines(x,z,lwd=1.5,col="orange")
x <-c(1.2,6.5,6.5)
w <-c(34.3,33.1,40.4)
lines(x,w,lwd=1.5,col="purple")
x <-c(18.5,19.1,12.6,12.2,6.5)
y <-c(36.2,42.0,45.1,40.4,40.4)
lines(x,y,col="blue")
x <-c(3.3,11.4,14.3,16.0,11.7,12.2,6.5)
z <-c(22.6,20.3,23.6,31.4,35.8,40.4,40.4)
lines(x,z,lwd=1.5,col="red")
x <-c(6.5,6.5,6.5)
w <-c(25.8,33.1,40.4)
lines(x,w,lwd=1.5,col="yellow")
title(main = "第三波打击路径")






#x <-c(40.3,33.3,27.1,32.7)
#w <-c(33.3,30.1,34.2,37.3)














title("2015年3月客流量")
with(mydata,plot(Date,Num),xlab ="Time",ylab ="renshu")
fit <-lm(mydata)
abline(fit,lwd=2)
plot.ts(mydata$Num)
boxplot(mydata$ｎｕｍ)
#datasets iris dataframe.
class(mydata)
matrix(mydata)
class(mydata)
mydata
