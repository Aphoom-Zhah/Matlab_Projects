%Построить поверхности, используя surf, surfc и mesh:
clc, close all

[u1, v1] = meshgrid(0:pi/12:2*pi, -1/2:0.1:1/2);
X = (1+v1.*cos((1/2).*u1)).*cos(u1);
Y = (1+v1.*cos((1/2).*u1)).*sin(u1);
Z = v1.*sin((1/2).*u1);

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