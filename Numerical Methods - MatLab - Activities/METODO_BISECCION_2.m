close all
clear all
 
syms x;
 
intervaloInferior=input('Ingrese el Intervalo Inferior: ')
intervaloSuperior=input('Ingrese el Intervalo Superior: ')
toleranciaError=input('Ingrese la Tolerancia del Error: ')
funcion=input('Ingrese la exprecion: ')
i=1;
errorRelativo(i)=100;
f1=subs(funcion,x,intervaloInferior);
f2=subs(funcion,x,intervaloSuperior);
 
if f1*f2<0
    xr(i)=(intervaloInferior+intervaloSuperior)/2;%Calcular la nueva raiz
    f3=subs(funcion,x,xr(i));%Evalua nueva raiz
    while errorRelativo(i)>=toleranciaError
        if f1*f3<0
            intervaloSuperior=xr(i);
            f2=subs(funcion,x,intervaloSuperior);
        end
        if f1*f3>0
            intervaloInferior=xr(i);
            f1=subs(funcion,x,intervaloInferior);
        end
        
        xr(i+1)=(intervaloInferior+intervaloSuperior)/2;%Calcular la nueva raiz
        f3=subs(funcion,x,xr(i+1));%Evalua nueva raiz
        errorRelativo(i+1)=abs((xr(i+1)-xr(i))/(xr(i+1)))*100;
        i=i+1;
    end
else
    disp('No hay una raiz en ese intervalo')
end
disp('El vector raiz es: ')
disp(xr)
disp('El vector del error relativo: ')
disp(errorRelativo)
