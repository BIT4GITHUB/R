#R in actions
kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
kingstimeseries <- ts(kings)  #?ts()
kingstimeseries
plot.ts(kingstimeseries)
library(TTR)    #using SMA() function ָ��ƽ����
kingstimeseriesSMA3 <- SMA(kingstimeseries ,n=3)  #n��ƽ�����
plot.ts(kingstimeseriesSMA3)
kingstimeseriesSMA8 <-SMA(kingstimeseries ,n=8)
plot.ts(kingstimeseriesSMA8)
kingstimeseriesSMA8