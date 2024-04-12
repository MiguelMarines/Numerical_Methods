close all
clear all
 
x=[1,2,3,4];
y=[2.1,4.3,6,7.8];
 
plot(x,y,'+r')
 
p=polyfit(x,y,1);
x1=linspace(min(x),max(x),20);
y1=polyval(p,x1)
hold on
plot(x1,y1,'m')
