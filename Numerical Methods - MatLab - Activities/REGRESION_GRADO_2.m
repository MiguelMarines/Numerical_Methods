close all
clear all
 
x=[-1,0,3,7];
y=[2,0,4,7];
 
plot(x,y,'+r')
%Ajuste a polinomio de grado 2
p=polyfit(x,y,2);
x1=linspace(min(x),max(x),20);
y1=polyval(p,x1)
hold on
plot(x1,y1,'m')
