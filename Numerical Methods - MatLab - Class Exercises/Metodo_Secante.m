close all
clear all
 
f=input('Introduce la funcion ','s');
x0=input('Introduce el intervalo inferior ')
x1=input('Introduce el intervalo superior ')
 
e=input('Introduce el porcentaje de error ')
 
f=inline(f);
 
c=1;
ea=100;
 
 
while ea>e
    x=x0;      %asignar el valor de  intervalo inferior
    f1=f(x);     %Evaluar la función con valor I.Inf.
    
    x=x1;      %asignar el valor de  intervalo superior
    f2=f(x);   %Evaluar la función con valor I.Sup. 
    
    xi=x1-((f2*(x0-x1))/(f1-f2));       %Hacer calculo para xi
    
    ea=abs((xi-x1)/xi)*100;            %calculo del error relativo
    x0=x1;      % asignar el nuevo valor de  intervalo inferior
    x1=xi;       % asignar el nuevo valor de  intervalo superior
    c=c+1;      % incrementar el contador en 1
end 
 
fprintf('La raiz exacta es %f', xi )
fprintf('Numero de iteraciones %d', c)
