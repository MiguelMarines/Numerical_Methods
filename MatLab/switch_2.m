close all
clear all
 
d=input('Ingrese el numero del dia')
 
switch d
    case 1
        disp('Lunes')
    case 2
        disp('Martes')
    case 3
        dsip('Miercoles')
    case 4
        dsip('Jueves')
    case 5
        dsip('Viernes')
    case 6
        dsip('Sabado')
    case 7
        dsip('Domingo')
    otherwise
        disp('Ingreso mal el dia')
end