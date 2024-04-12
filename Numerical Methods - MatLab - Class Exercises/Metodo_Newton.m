close all
clear all
syms x;
 
x0=input('Ingrese el valor inicial: ');
tol=input('Ingrese el porcentaje de error: ');
f=input('Ingrese la función: ', 's');
i=1;
fx(i)=x0;
f1=diff(f,x); 
f2=subs(f,x,fx(i));
f3=subs(f1,x,fx(i));
 
ea(1)=100;
 
while ea(i)>=tol
    fx(i+1)=fx(i)-f2/f3; 
    f2=subs(f,x,fx(i+1)); 
    f3=subs(f1,x,fx(i+1));
    ea(i+1)=abs((fx(i+1)-fx(i))/fx(i+1)*100);
    i=i+1;
end
fprintf('i     fx(i)         Error aprox (i) \n');
for j=1:i
    fprintf('%2d \t %11.7f \t %7.3f \n',j-1,fx(j),ea(j));
end
