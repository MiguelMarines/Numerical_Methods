close all
clear all
 
x=[0,1,2,3,4,5];
y=[2.1,7.7,13.6,27.2,40.9,61.1];
plot(x,y,'*r') 
n=length(x)
sx=sum(x)
sy=sum(y)
sx2=sum(x.^2)
sx3=sum(x.^3)
sx4=sum(x.^4)
sxy=sum(x.*y)
sx2y=sum(x.^2.*y);
%Generar matriz y vector.
A=[n,sx,sx2;sx,sx2,sx3;sx2,sx3,sx4];
B=[sy;sxy;sx2y];
xr=A\B;
p=[xr(3),xr(2),xr(1)];
x1=linspace(min(x),max(x),30);
y1=polyval(p,x1);
hold on
 
plot(x1,y1,'m')
