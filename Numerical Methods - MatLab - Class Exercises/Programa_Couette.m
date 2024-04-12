close all
clear all
 
h = 1;
i = input('Numero de li­neas: ');
dy = h/(i-1);
 
A = zeros(i-2,i-1);
 
for n=1:i-2
        y1 = dy*(n-0.5);
        y3 = dy*(n+0.5);
        v1 = exp(2*(1-(y1/h)));
        v3 = exp(2*(1-(y3/h)));
        
        if n==1
            A(n,n) = -(v1+v3);
            A(n,n+1) = v3;
        end
        
        if n~=1
            A(n,n-1) = v1;
            A(n,n) = -(v1+v3);
            A(n,n+1) = v3;
        end
end
 
B = -1*A(1:i-2,i-1);
A = A(1:i-2,1:i-2);
 
x1 = A\B;
x2 = zeros(i,1);
x2(2:i-1,:)=x1;
x2(i)=1
 
% Analytical solution
 
e=zeros(i,1);
y=0;
for n=1:i
    e(n,1) = (exp(2*(y/h))-1)/(exp(2)-1);
    y=y+dy;
end
 
e
 
% Viscosidad
 
v=zeros(i,1);
y=0;
for n=1:i
    v(n,1) = exp(2*(1-(y/h)));
    y=y+dy;
end
 
% Plot
 
figure
x = x2;
y = linspace(0,h,i);
plot(x,y)
title('Velocidad en funcion de ubicacion')
xlabel('Velocidad u')
ylabel('UbicaciÃ³n y')
grid on
 
figure
x = v;
y = linspace(0,h,i);
plot(x,y)
title('Viscosidad en funcion de ubicacion')
xlabel('Viscosidad v')
ylabel('UbicaciÃ³n y')
grid on
 
%-------------------------------------------------------------------------------------------------------
%Matriz C
%C = [-10.105 4.055 0 0;4.055 -6.773 2.718 0;0 2.718 -4.54 1.822;0 0 1.822 -3.044];
 
%Vector D tipo columna
%D = [0;0;0;-1.221];
 
% Division de la izquierda C * x2 = D
%x2 = C\D;
