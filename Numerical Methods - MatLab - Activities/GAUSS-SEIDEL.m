close all
clear all
 
A=[17,-2,-3;-5,21,-2;-5,-5,22]
 
B=[500;200;30];
disp('La solucion es: ')
x=A\B
x1=inv(A)*B
