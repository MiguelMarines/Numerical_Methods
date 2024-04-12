close all
clear all
 
f=input('Expresion: ','s')
x0=input('Intervalo Inferior: ')
x1=input('Intervalo Superior: ')
tol=input('Tolerancia: ')
f=inline(f)
c=1;
ea=100;
 
while ea>=tol
    f1=f(x0);
    f2=f(x1);
    xi=x1-((f2*(x0-x1))/(f1-f2)); %Nueva Raiz
    ea=abs((xi-x1)/xi)*100; %Actulizar el error relativo
    x0=x1;
    x1=xi;
    c=c+1;
end
fprintf('La nueva raiz es: %f \n',xi)
fprintf('El error relativo es: %f \n',ea)
fprintf('Las corridas fueron: %i',c)
