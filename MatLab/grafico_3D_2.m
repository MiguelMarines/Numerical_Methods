close all
clear all
 
%Vectores del Dominio
x=[-3:0.02:3];
y=[-3:0.02:3];
 
%Convertir Vectores a Matrices
[X,Y]=meshgrid(x,y);
 
%Generar Matriz Z
Z=sin(X).*cos(0.5.*Y);
 
%Grafico en 3D
mesh(X,Y,Z)
