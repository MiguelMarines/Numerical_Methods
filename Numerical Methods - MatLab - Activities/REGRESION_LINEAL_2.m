close all
clear all
 
x=[1,2,3,4];
y=[2.1,4.3,6,7.8];
plot(x,y,'+r')
 
n=length(x);
sx=sum(x);
 
sy=sum(y);
sx2=sum(x.^2);
sxy=sum(x.*y);
%Formar el sistema de ecuaciones
A=[n sx; sx sx2];
B=[sy;sxy];
%Resolver el sistema
xr=A\B
p=[xr(2),xr(1)]
x1=linspace(min(x),max(x),20);
y1=polyval(p,x1)
hold on
plot(x1,y1,'m')
