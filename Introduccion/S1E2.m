%%%  Programa que permite graficar una se;al senoidal, de acuerdo a lo que
%%%  el usuario especifique.

% Nombre> Ruben Estrada M.
% Fecha> 9 - Junio -2015


%Generar un vector de 8000 muestras que guarde el tiempo
tiempo = [0:1/7999:1];

%Crear un vector de 1's con 8mil datos.
temp = [0:(2*pi)/7999:2*pi];

%Crear el vector de la se;al a graficar
f = input('Ingresar frecuencia ');
Signal = sin(temp*f);


%Graficar la se;al vs el vector tiempo
plot(tiempo, Signal);

