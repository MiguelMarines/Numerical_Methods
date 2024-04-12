close all
clear all
 
A=[1,2,-1,4;0,-1,5,8;2,3,1,4;1,-1,6,4];
B=[3;-11;4;-5];
 
[L,U]=lu(A);
y=inv(L)*B;
 
disp('Vector Solucion: ')
x=inv(U)*y
