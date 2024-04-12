close all
clear all
 
for x=0:0.1:10
    y=5+log(x)
    plot(x,y,'*r')
    y=(4/pi)*sin(x)
    plot(x,y,'*g')
    hold on
end
