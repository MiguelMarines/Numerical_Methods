close all
clear all
 
s=0
for i=1:1:5
    s=s+i
end
disp(s)


10. GRAFICAR / Ej.1

close all
clear all
 
for x=0:0.1:10
    y=(2*x^2)+(3*x)+1
    plot(x,y,'*r')
    hold on
end


10. GRAFICAR / Ej.2
close all
clear all
 
for x=0:0.1:10
    y=(2*x^2)+(3*x)+1
    plot(x,y,'*r')
    y=(x^2)+(11*x)+30
    plot(x,y,'*g')
    hold on
end
