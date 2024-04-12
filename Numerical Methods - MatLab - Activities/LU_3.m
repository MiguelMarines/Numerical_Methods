close all
clear all
 
C=[4 -10 -8 -8;
    24 -52 -53 -43;
    20 -18 -63 -28;
    32 -128 -34 -91]
B=[6;2;-7;-5];
 
[L,U]=lu(C);
y=inv(L)*B;
 
disp('Vector Solucion: ')
x=inv(U)*y
