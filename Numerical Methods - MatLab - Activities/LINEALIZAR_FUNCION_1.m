close all
 clear all
 
 x=[1:0.25:5];
 y=x.^3-x/2;
 
 plot(x,y,'*g')
 px=mean(x);
 py=mean(y);
 n=length(x);
 
 %Inicializar los acumuladores
 num=0;
 den=0;
 
 for i=1:n;
     num=num+(x(i)-px)*(y(i)-py);
     den=den+(x(i)-px)^2;
 end
 
 %Obtener el coeficiente b
 b=num/den;
 a=py-b*px;
 hold on
 
 x1=linspace(min(x),max(x),30)
 y1=a+b*x1;
 plot(x1,y1,'+m')
 title('Linealizar funciones: ')
 xlabel('Eje X')
 ylabel('Eje Y')
 legend('Funcion Original','Funcion Linealizada')
