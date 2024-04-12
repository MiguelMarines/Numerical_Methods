%Función personalizada del polinomio de Lagrange.

function [y]=PoliLagrange(x,X,Y)
y=0;
for i=1:numel(X)
      L=1;
      for j=1:numel(X)
            if j~=i
               L=L*(x-X(j))/(X(i)-X(j));
            end
      end
     y=y+L*Y(i);
end
end

% Programa principal del polinomio de Lagrange.

close all
clear all
 
X=[0,1,2,4];
Y=[-1,0,7,63];
x=3;
y=PoliLagrange(x,X,Y)
