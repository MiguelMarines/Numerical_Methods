close all
clear all
 
v=[5,7,9,2];
 
s=0;
for i=1:1:4
   s=s+v(i);
end
 
promedio=s/4;
 
fprintf('El promedio es %f ', promedio)
