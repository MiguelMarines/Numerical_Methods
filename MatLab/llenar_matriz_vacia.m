% Llenar una matriz vacia
close all
clear all
 
A=[1,2,3 ; 4,5,6];
 
B=[ ];
 
for i=1:2
        for j=1:3
         B(i,j)=A(i,j);
         end
end
 
B
