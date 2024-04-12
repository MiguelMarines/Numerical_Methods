close all
clear all
 
v=[4,1,11,13,2,7];
n=length(v);
mayor=v(1);
menor=v(1);
 
 for i=1:1:n
     if mayor<v(i)
         mayor=v(i);
     elseif menor>v(i)
             menor=v(i);
     end
     
 end
 fprintf('El elemento mayor es: %i \n', mayor)
 fprintf('El elemento menor es: %i \n', menor)
