a<-1:100000
b<-100000:1

run1<-function(){  #����������
  sum(as.numeric(a+b))
}

run2<-function(){  #ѭ������
  c2<-0
  for(i in 1:length(a)){
    c2<-a[i]+b[i]+c2
  }
  c2
}

system.time(run1())

system.time(run2())

#��������������������Ҫ��ѭ����(����ʱ����ݻ�
���Ĳ�ͬ���ܻ�������ͬ)��
���㷨Խ����������Խ���ʱ��
�����ʱ�����Խ���Եġ�R�ı��
�е�һ�������������������������е�ѭ�����㡣)
#(system.time(run1())
�û� ϵͳ ���� 
0    0    0 
system.time(run2())
�û� ϵͳ ���� 
0.21 0.00 0.20 )