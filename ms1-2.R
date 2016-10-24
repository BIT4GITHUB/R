#第一小问
curve(dnorm(x,0,1),xlim = c(-2,2),
      ylim= c(0,4),col='red',lwd=2.5)
curve(dnorm(x,0,1/10),add = T,col='blue',lwd=2.5)
legend(par('usr')[2],par('usr')[4],xjust = 1,
       c('norm','mean'),
       lwd = c(2.5,2.5),
       col = c('red','blue'))
#第二小问
curve(dnorm(x,0,1),xlim = c(-2,2),
      ylim= c(0,4),col='red',lwd=2.5)
curve(dnorm(x,0,1/2),add = T,col='blue',lwd=2.5)
curve(dnorm(x,0,1/3),add = T,col='green',lwd=2.5)
curve(dnorm(x,0,1/5),add = T,col='grey',lwd=2.5)
curve(dnorm(x,0,1/10),add = T,col='black',lwd=2.5)
title(main = "抽样分布Mean密度")
legend(par('usr')[2],par('usr')[4],xjust = 1,
       c('n=10','n=20','n=30','n=50','n=100'),
       lwd = c(2.5,2.5,2.5,2.5,2.5),
       col = c('red','blue','green','grey','black'))

#第三小问,r.v Y是服从卡方（n-1)分布
curve(dchisq(x,9),xlim = c(0,10),ylim =c(0,0.12),col='red',lwd=2.5)
curve(dchisq(x,19),add=T,col='blue',lwd=2.5)     
curve(dchisq(x,39),add = T,col='orange',lwd=2.5)
abline(h=0,lty=3)
abline(v=0,lty=3)
title(main='Chi squere Distributions')
legend("topleft",xjust = 1,
       c('df=9','df=19','df=39'),
       lwd = 3,lty = 1,
       col = c('red','blue','orange'))