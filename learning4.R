#Time series analitic
kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
kingstimeseries <- ts(kings)
kingstimeseries
# Sun May 01 22:08:17 2016 ------------------------------
plot.ts(kingstimeseries)