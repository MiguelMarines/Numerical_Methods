close all
clear all
 
for x=0:0.1:10
    y=(2*x^2)+(3*x)+1
    plot(x,y,'*r')
    y=(x^2)+(11*x)+30
    plot(x,y,'*g')
    hold on
end
