close all
clear all
 
x=[2,3,4];
y=[0.5,0.3333,0.25];
 
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
X=A\B;
%Determinar las raices con la formula cuadrática.
 
a=X(3);
b=X(2);
c=X(1)-0.3;
 
r1=(-b+sqrt((b^2)-4*a*c))/(2*a)
 
r2=(-b-sqrt((b^2)-4*a*c))/(2*a)
