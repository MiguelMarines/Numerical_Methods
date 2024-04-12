% Método de Euler

close all
clear all
 
fprintf('\tResolución de Ecuaciones Diferenciales por el Metodo de Euler');
f=inline(input('\nIngrese la derivada: ','s'));
x=input('\nIngrese el valor de x inicial: ');
xf=input('\nIngrese el valor de x final: ');
y=input('\nIngrese el valor de y inicial; ');
h=input('\nIngrese el paso: ');
n=(xf-x)/h
disp(' x    y');
 
for i=i:n+1
    y1=feval(f,x,y);
    hy1=h*y1;
    fprintf('\n%0.1f %0.4f ',x,y);
    y=y+hy1;
    x=x+h;
end
