close all
clear all
 
syms y;
f=(sin(y)+5*y^2)
 
f2=int(f,y,0,pi)
 
f3=single(f2)
