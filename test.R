a<-1:100000
b<-100000:1

run1<-function(){  #向量化计算
  sum(as.numeric(a+b))
}

run2<-function(){  #循环计算
  c2<-0
  for(i in 1:length(a)){
    c2<-a[i]+b[i]+c2
  }
  c2
}

system.time(run1())

system.time(run2())

#（运算结果，向量化计算要比循环快(上述时间根据机
器的不同可能会有所不同)。
当算法越复杂数据量越大的时候，
计算的时间差距会越明显的。R的编程
中的一条法则就是用向量计算代替所有的循环计算。)
#(system.time(run1())
用户 系统 流逝 
0    0    0 
system.time(run2())
用户 系统 流逝 
0.21 0.00 0.20 )