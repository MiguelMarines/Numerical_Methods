close all
clear all
 s=0;
fprintf('Calculo de la Integral por la Regla Trapezoidal: \n\n');
f=input('introduce la funcion:','s');
n=input('introduce el valor de n: \n');
b=input('introduce el valor de Limite Superior: \n');
a=input('introduce el valor de Limite Inferior: \n');
h=(b-a)/n;
f=inline(f);
s=f(a)+f(b);
 for i=1:n-1
    x=a+i*h;
    s=s+2*f(x);
 end
 st=(h/2)*s; 
 fprintf('\n Resultado= %d',s)
fprintf('\n')
