close all
clear all
 
A=[3,1,2;
    4,3,4;
    2,1,2];
B=[10;21;9];
disp('El resultado es: ')
x=inv(A)*B
x1=A\B
