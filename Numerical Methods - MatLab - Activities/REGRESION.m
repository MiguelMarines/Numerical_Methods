close all
clear all
 
x=[1:0.25:5];
y=x.^3-x/2;
 
 
plot(x,y,'*g')
 
px=mean(x);
py=mean(y);
n=length(x);
 
%Inicializar acumuladores
num=0;
den=0;
