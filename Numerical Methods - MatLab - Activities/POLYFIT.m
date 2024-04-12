close all
clear all
 
t=[0:0.5:5];
w=[6,4.83,3.7,3.15,2.41,1.83,1.49,1.21,0.96,0.73,0.64];
 
plot(t,w,'*r')
p=polyfit(t,log(w),1);
 
m=p(1);
b=exp(p(2));
 
t1=linspace(min(t),max(t),20);
w1=b*exp(m*t1);
 
hold on
plot(t1,w1,'m')
