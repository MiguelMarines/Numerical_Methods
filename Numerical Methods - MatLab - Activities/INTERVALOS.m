close all
clear all
fprintf('Calculo de la Integral por la Regla Simpson 1/3: \n\n');
f=input('introduce la funcion:','s');
n=1;
while mod(n,2)~=0
    n=input('Ingrese el número de subintervalos: ');
    if mod(n,2)~=0
        disp('El número de subintervalos debe ser par, pulse una tecla para continuar')
        pause
    end
end 
b=input('introduce el valor de Limite Superior: \n');
a=input('introduce el valor de Limite Inferior: \n');
f=inline(f);
h=(b-a)/n;
si=0;
sp=0;
 
for i=1:2:n-1
    si=si+feval(f,h*i+a);
end
for i=2:2:n-2
    sp=sp+feval(f,h*i+a);
end
int=(h/3)*(feval(f,a)+4*si+2*sp+feval(f,b));
fprintf('\n Resultado de la integral es = %d',int)
fprintf('\n')
