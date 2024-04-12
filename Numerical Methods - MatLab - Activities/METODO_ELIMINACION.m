close all
clear all
 
A=[1,1,1;2,1,3;3,4,-2]
 
b=[4;7;9]
 
Ab=[A, b]
 
piv=Ab(2,1)/Ab(1,1)
 
Ab(2,:)=Ab(2,:)-piv*Ab(1,:)
 
piv=Ab(3,1)/Ab(1,1)
 
Ab(3,:)=Ab(3,:)-piv*Ab(1,:)
 
piv=Ab(3,2)/Ab(2,2)
 
Ab(3,:)=Ab(3,:)-piv*Ab(2,:)
 
x=zeros(3,1)
 
x(3)=Ab(3,end)/Ab(3,3)
 
x(2)=(Ab(2,end)-Ab(2,3)*x(3))/Ab(2,2)
 
x(1)=(Ab(1,end)-(Ab(1,3)*x(3)+Ab(1,2)*x(2)))/Ab(1,1)
 
 
disp('compara')
 
A\b
