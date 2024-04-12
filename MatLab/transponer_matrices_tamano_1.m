close all
clear all
 
A=[1,2,3;4,5,6;7,8,9]
disp('Matriz Transpuesta')
MT=A'
[renglones,columnas]=size(A)
 
B=randi(10,renglones,columnas)
disp('Matriz Transpuesta')
B'
