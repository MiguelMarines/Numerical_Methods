close all
clear all
 
syms x;
 
s=input('Expresion: ')
s1=diff(s,x)
pretty(s1)
