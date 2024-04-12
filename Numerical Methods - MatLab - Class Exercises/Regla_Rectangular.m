close all
clear all
s=0;
fprintf('Calculo de la Integral por la Regla Rectangular: \n\n');
f=input('introduce la funcion:','s');
n=input('introduce el valor de n: \n');
 b=input('introduce el valor de Limite Superior: \n');
a=input('introduce el valor de Limite Inferior: \n');
f=inline(f);
h=(b-a)/n;
 
if n==1 
  int=(a+b)/2;  
  s=f(int);
elseif n>1 
        for i=1:n 
            xi=a+(2*i-1)*h/2;
            s=s+f(xi);
        end    
    end          
  st=s*h;
  
fprintf('\n Resultado= %d',st)
fprintf('\n')
