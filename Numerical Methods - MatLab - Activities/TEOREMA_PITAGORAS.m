close all
clear all
 
disp('Teorema de Pitágoras')
a=input('Ingersa un Número: ')
b=input('Ingresa otro Número: ')
disp('El Resultado del Teorema de Pitágoras es: ')
c=teoremaPitagoras(a,b)
 
function [c]=teoremaPitagoras(a,b)
    c=sqrt(a^2+b^2);
end
