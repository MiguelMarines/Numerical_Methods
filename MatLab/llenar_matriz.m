close all
clear all
 
A=[];
 
numRenglones=input('Ingrese el numero de renglones: ')
numColumnas=input('Ingrese el numero de columnas: ')
 
for i=1:1:numRenglones
    for j=1:1:numColumnas
        fprintf('(%i,%i)',i,j)
        A(i,j)=input('Ingrese numero: ')
    end
end
disp('Matriz Llena')
disp(A)
