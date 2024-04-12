close all
clear all
 
syms x;
 
f=input('Ingrese expresión: ')
x0=input('Ingrese el valor inicial: ')
tol=input('Tolerancia: ')
i=1;
ezplot(f,[0,2])
ra(i)=x0;
ea(i)=100;
f1=diff(f,x);
f2=subs(f,x,ra(i));
f3=subs(f1,x,ra(i));
 
while ea(i)>=tol
    ra(i+1)=ra(i)-f2/f3;
    f2=subs(f,x,ra(i+1));
    f3=subs(f1,x,ra(i+1));
    ea(i+1)=abs((ra(i+1)-ra(i))/ra(i+1))*100;
    i=i+1;
end
disp('El Vector Raíz: ')
disp(ra)
disp('Error Relativo: ')
disp(ea)
