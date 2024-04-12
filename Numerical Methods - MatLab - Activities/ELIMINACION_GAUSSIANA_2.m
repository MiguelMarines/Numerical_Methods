close all
clear all
 
A=[3,-6,7,4;
    8,0,-5,19;
    1,-2,6,5];
disp('El resultado es: ')
B=rref(A)
R=B(:,4)
R1=B(:,end)