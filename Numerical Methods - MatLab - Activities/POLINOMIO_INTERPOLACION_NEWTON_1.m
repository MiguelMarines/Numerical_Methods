function [y1,b]=pol_newton(x,y,x1)
%Polinomio de Interpolación Newton
n=length(x);
b=zeros(n); %Tabla de Diferencias
b(:,1)=y(:);
for j=2:n
    for i=1:n-j+1
        b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
    end
end
 
xt=1;
 
y1=b(1,1);
for j=1:n-1
    xt=xt.*(x1-x(j));
    y1=y1+b(1,j+i)*xt;
end
