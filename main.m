%%

% 1. Mediante MATLAB, grafique la señal x(t) = sen(2*pi*t) en el intervalo
% de tiempo 0 < t < 10, con las siguientes elecciones de resolucion de
% tiempo de la grafica. Indefique porque las graficas tienen la apariencia
% que se muestra.
% 
% a. 1/24
% b. 1/12
% c. 1/4
% d. 1/2
% e. 2/3
% f. 1

clear all;
close all;
clc;

dt_a = 1/24;
dt_b = 1/12;
dt_c = 1/4;
dt_d = 1/2;
dt_e = 2/3;
dt_f = 1;

                                            % Seleccione resolucion de tiempo...
                                            dt = dt_f;

t = (0 : dt : 10);

x = sin(2*pi*t);

plot(t, x, '-o', 'LineWidth', 1);
grid on;

%%

% 2. Mediante MATLAB grafique cada una de las siguietes funciones. Si la
% funcion es periodica, encuentre analiticamente el periodo y verifique a
% partir de la grafica.
% 
% a. sen(3*pi*n/2)
% b. sen(2*pi*n/3) + cos(10*pi*n/3)
% c. 5*sen(2*pi*n/8) + 3*cos(2*pi*n/5)
% d. -3*sen(2*pi*n/7) * cos(2*pi*n/6)

clear all;
close all;
clc;

n_a = (-2 : 0.01 : 2);
n_b = (-5 : 0.01 : 5);
n_c = (-50 : 0.01 : 50);
n_d = (-50 : 0.01 : 50);

g_a = sin((3*pi/2).*n_a);
g_b = sin((2*pi/3).*n_b) + cos((10*pi/3).*n_b);
g_c = 5*sin((2*pi/8).*n_c) + 3*cos((2*pi/5).*n_c);
g_d = -3*sin((2*pi/7).*n_d) .* cos((2*pi/6).*n_d);

subplot(2, 2, 1);
plot(n_a, g_a, 'r', 'LineWidth', 1);
title("sen(3*pi*n/2)");
grid on;

subplot(2, 2, 2);
plot(n_b, g_b, 'b', 'LineWidth', 1);
title("sen(2*pi*n/3) + cos(10*pi*n/3)")
grid on;

subplot(2, 2, 3);
plot(n_c, g_c, 'k', 'LineWidth', 1);
title("5*sen(2*pi*n/8) + 3*cos(2*pi*n/5)")
grid on;

subplot(2, 2, 4);
plot(n_d, g_d, 'g', 'LineWidth', 1);
title("-3*sen(2*pi*n/7) * cos(2*pi*n/6)")
grid on;

%%

% 3. Con alguna de las graficas anteriores verifique la diferencia de
% graficar con plot y con stem.

clear all;
close all;
clc;

n_a = (-2 : 0.1 : 2);
n_b = (-5 : 0.1 : 5);
n_c = (-30 : 0.5 : 30);
n_d = (-30 : 0.5 : 30);

g_a = sin((3*pi/2).*n_a);
g_b = sin((2*pi/3).*n_b) + cos((10*pi/3).*n_b);
g_c = 5*sin((2*pi/8).*n_c) + 3*cos((2*pi/5).*n_c);
g_d = -3*sin((2*pi/7).*n_d) .* cos((2*pi/6).*n_d);

                                                stem(g_d, 'LineWidth', 1);











