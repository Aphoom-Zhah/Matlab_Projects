%Построить поверхности, используя surf, surfc и mesh:
clc, close all

a = input("a(5) = ");
[u1, v1] = meshgrid(0:pi/12:2*pi, -pi/2:pi/12:pi/2);
X = a.*cos(u1).*cos(v1);
Y = a.*cos(u1).*sin(v1);
Z = sin(u1-a);

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