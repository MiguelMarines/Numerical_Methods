% programa que calcula el maximo y minimo de un vector.
close all
clear all
 
v=[4 1 11 13 2 7];
ma=v(1);
mi=v(1);
for i=1:6   
    if ma<v(i)
ma=v(i);
    elseif mi>v(i)
mi=v(i);
end
end
disp(mi);
disp(ma);





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





%suma acumulativa de una matriz

close all
clear all
 
A=[1,2,3;4,5,6];
s=0;
for i=1:2
    for j=1:3
        disp(A(i,j));
        s=s+A(i,j);	
    end
end
disp(s);







% llenar una matriz vacia
close all
clear all
 
A=[1,2,3 ; 4,5,6];
 
B=[ ];
 
for i=1:2
        for j=1:3
         B(i,j)=A(i,j);
         end
end
 
B
