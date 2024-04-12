close all
clear all
 
syms x y;
s=sin(x^3+y^5);
s1=diff(s,x) %Deriva con respecto a x
pretty(s1)
s2=diff(s,y) %Deriva con respecto a y
pretty(s2)
