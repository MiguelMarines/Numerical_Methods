close all
clear all
x=[0,1,2,4];
y=[-1,0,7,63];
x1=3;
disp('Resultado de la Interpolación: ')
res=pol_lagrange(x,y,x1)
 
function [y1]=pol_lagrange(x,y,x1)
 
    y1=0;
    n=numel(x);
    for i=1:n
        L=1;
        for j=1:n
            if j~=i
                L=L*(x1-x(j))/(x(i)-x(j));
            end
        end
        y1=y1+L*y(i);
    end
end
