close all
clear all
 
R=200;
t=[1:1:10];
v=[9.4,7.31,5.15,3.55,2.81,2.04,1.26,0.97,0.74,0.58];
 
plot(t,v,'+r')
p=polyfit(t,log(v),1);
C=-1/(R*p(1));
 
v0=exp(p(2));
 
t1=linspace(min(t),max(t),30)
v1=v0*exp(-t1./(R*C));
hold on
 
plot(t1,v1,'m')
title('Ajuste a Modelo Exponencial: ')
 xlabel('Tiempo')
 ylabel('Voltaje')
 legend('Funcion Original','Función Ajustada')
