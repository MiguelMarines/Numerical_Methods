close all
clear all
 
t=[1,2,3,4,5];
p=[3,5,7,5,6];
 
t1=[1.5,2.5,3.5,4.5]; %Vector a Interpolar
 
p1=interp1(t,p,t1,'linear')%Vector Resultante de Interpolar
 
plot(t,p,'o',t1,p1,'*')
