close all
clear all
 
A=[1,2,3;4,5,6];
suma=0;
 
for i=1:1:2
    for j=1:1:3
        suma=suma+A(i,j);
    end
end
fprintf('La suma acumulativa de los elementos de la matriz es %f \n',suma)
