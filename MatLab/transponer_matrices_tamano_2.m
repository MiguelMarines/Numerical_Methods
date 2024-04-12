close all
clear all
 
A=[1,2,3;4,5,6;7,8,9]
disp('Matriz Transpuesta')
MT=A'
[renglones,columnas]=size(A)
 
r=10
c=5
B=randi(10,r,c)
disp('Matriz Transpuesta')
B'
