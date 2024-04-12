close all
clear all
 
A=[2,3,2,4;4,10,-4,0;-3,-2,-5,-2;-2,4,4,-7];
B=[4;-8;-4;-1];
 
[L,U]=lu(A);
y=inv(L)*B;
 
disp('Vector Solucion: ')
x=inv(U)*y
