t = [1 2 3 4 5];
p = [3 5 7 5 6];
x=1:0.1:5;
y=interp1(t,p, x, 'linear');
 
plot(t, p, 'o', x, y)
