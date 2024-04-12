close all 
clear all
syms x;
xb= input('Intervalo superior');
xa= input('Intervalo inferior');
tol= input ('porcentaje de error');
f= input('introduce la funcion','s');
i=1;
ea(i)=100;
f1= subs(f,x,xa);
f2= subs(f,x,xb);
 
if f1*f2<0
 
    xr(i)=(xa+xb)/2;    
    f3=subs(f,x,xr(i));
    while abs(ea(i))>= tol 
        if f1*f3<0
            xa=xa; f1=subs(f,x,xa);
            xb=xr(i); f2=subs(f,x,xb);
        end
        if f1*f3>0
            xa=xr(i);   f1=subs(f,x,xa);
            xb=xb;   f2=subs(f,x,xb);
        end
             xr(i+1)=(xa+xb)/2;
             f3=subs(f,x,xr(i+1));
             ea(i+1)=abs((xr(i+1))- xr(i))/(xr(i+1))*100;
 
           i=i+1;
         end
     else
fprintf('No existe una raíz en ese intervalo');
end   
disp('El resultado es')
disp(xr)
