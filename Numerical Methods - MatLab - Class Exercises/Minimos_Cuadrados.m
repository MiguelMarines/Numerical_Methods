% Minimos cuadrados con funciones de Matlab.

close all
clear all
 
xi=[1,2,3,4]
yi=[2.1,4.3,6,7.8]
 plot(xi,yi,'r*')
xp=linspace(1,4,20)
c=polyfit(xi,yi,1)
yp=polyval(c,xp)
hold on
plot(xp,yp)
