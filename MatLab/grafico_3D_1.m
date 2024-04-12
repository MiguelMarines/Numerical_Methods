GRAFICO_3D_2.mclose all
clear all
 
t=[0:0.02:10*pi];
 
x=exp(-0.05.*t).*sin(t);
 
y=exp(-0.05*t).*cos(t);
z=t;
plot3(x,y,z)
