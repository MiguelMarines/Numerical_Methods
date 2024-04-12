% Linealizar funciones no lineales con formulas.

close all
clear all
 
 
x=[1:0.25:5];
y=x.^3-x/2;
 
plot(x,y,'*r','Linewidth',2)
 
xp=mean(x);
yp=mean(y);
 
N=0;D=0;
for i=1:length(x)
N=N+(x(i)-xp)*(y(i)-yp);
D=D+(x(i)-xp)^2;
end
  
b=N/D
a=yp-b*xp

hold on
 
x1=linspace(min(x),max(x),1000);
plot(x1, a+b*x1, 'Linewidth',2)
grid on
 
xlabel('\bfEje de las X');
ylabel('\bfEje de las Y');
legend('\bfMuestras no linealizadas', '\bfMuestras linealizadas');
title('\bfLINEALIZACION DE CURVAS')
