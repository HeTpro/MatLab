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
Signal = sin(temp*f)+0.5*sin(temp*f*5)+ 0.2*sin(temp*f/10);


%Graficar la se;al vs el ector tiempo
plot(tiempo, Signal);


%Calcular la transformada de fourier
m = size(Signal,2);
n = pow2(nextpow2(m));
y = fft(Signal,n);
f1 = (0:n-1)*(f/n);
power = y.*conj(y)/n;

%Graficar la fft
plot(f1, power);
xlabel('Frecuencia (Hz)');
ylabel('Potencia');








