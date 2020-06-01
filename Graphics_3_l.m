%Построить поверхности, используя surf, surfc и mesh:
clc, close all

r = 3;
a = 2;
b = input('b(3) = ');
[f1, v1] = meshgrid(0:pi/12:2*pi, 0:0.1:5);
X = (a+r.*sin(f1)).*cos(v1);
Y = (a+r.*sin(f1)).*sin(v1);
Z = r.*cos(f1)+b.*v1;

subplot(2,2,1);
surf(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('Surf');

subplot(2,2,2);
surfc(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('Surfc');

subplot(2,2,3);
mesh(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('Mesh');