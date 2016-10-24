#R in actions
kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
kingstimeseries <- ts(kings)  #?ts()
kingstimeseries
plot.ts(kingstimeseries)
library(TTR)    #using SMA() function 指数平滑法
kingstimeseriesSMA3 <- SMA(kingstimeseries ,n=3)  #n是平滑跨度
plot.ts(kingstimeseriesSMA3)
kingstimeseriesSMA8 <-SMA(kingstimeseries ,n=8)
plot.ts(kingstimeseriesSMA8)
kingstimeseriesSMA8
