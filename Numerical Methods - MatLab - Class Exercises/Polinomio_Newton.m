% Función personalizada.

function  [yi,p,b]=pol_newton(x,y,xi)
 n=length(x); 
 b=zeros(n); 
 b(:,1)=y(:);
 for j=2:n 
    for i=1:n-j+1  
        b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
    end
end
xt=1;
yi=b(1,1);
for j=1:n-1
    xt=xt.*(xi-x(j));
    yi=yi+b(1,j+i)*xt;
end
end


% Programa principal

close all
clear all
x=[1 2 4 8]
y=[5 8 4 2]
Re=pol_newton(x,y,6);
[yi,def]=pol_newton(x,y,6)
