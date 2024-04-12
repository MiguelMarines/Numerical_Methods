close all
clear all
 
disp('Regla Trapezoidal')
f=input('Expresión: ','s');
a=input('Limite Inferior: '); 
b=input('Limite Superior: ');
n=input('Numero de Particiones: ')
f=inline(f);
 
h=(b-a)/n;
acum=0;
 
acum=f(a)+f(b);
 
for i=1:n-1
    area=a+i*h;
    acum=acum+2*f(area);
end
sumaareas=(h/2)*acum;
fprintf('La solución aproximada es: %f \n',sumaareas)
