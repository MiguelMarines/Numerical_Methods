close all
clear all
 
disp('Regla Rectangular')
f=input('Expresión: ','s');
 
a=input('Limite Inferior: ');
 
b=input('Limite Superior: ');
 
n=input('Numero de Particiones: ')
 
f=inline(f);
 
h=(b-a)/n;
acum=0;
if n==1
    p=(a+b)/2;
    acum=f(p);
elseif n>1
    for i=1:n
        area=a+(2*i-1)*h/2;
        acum=acum+f(area);
    end
end
 
sumareas=h*acum;
fprintf('La Solución Aproximada es: %f \n',sumareas)
