close all
clear all
 
n=1;
sumatoria=0;
 
while n~=0
    n=input('Ingrese un numero, para terminar digite 0\n')
    sumatoria=sumatoria+n;
end
 
fprintf('La sumatoria de los numeros ingresados es: %f',sumatoria) 
