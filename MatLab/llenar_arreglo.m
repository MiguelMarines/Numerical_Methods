close all
clear all
 
n=input('Ingrese el tamaño del arreglo')
v=[];
 
for i=1:1:n
    fprintf('%i) \n',i)
    v(i)=input('Ingrese el elemento: ')
end
 
disp('Arreglo lleno')
disp(v)
