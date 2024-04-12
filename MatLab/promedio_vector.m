% calculo del promedio de un vector.

close all
clear all
v=[4 1 11 13 2 7];
p=0, s=0,s1=0;
for i=1:6	
    s=s+v(i);
end
p=s/6;
% calculo de la desviacion estandar, una vez teniendo el promedio.

for i=1:6   
    s1=s1+(v(i)-p)^2;
end
d=sqrt(1/5*s1)
