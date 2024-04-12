close all
clear all
 
syms y t;
 
f=5*y^2*cos(4*t)
 
f1=int(f,t)
 
pretty(f1)
