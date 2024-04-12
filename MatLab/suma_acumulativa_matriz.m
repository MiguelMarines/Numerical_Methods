% suma acumulativa de una matriz

close all
clear all
 
A=[1,2,3;4,5,6];
s=0;
for i=1:2
    for j=1:3
        disp(A(i,j));
        s=s+A(i,j);	
    end
end
disp(s);
