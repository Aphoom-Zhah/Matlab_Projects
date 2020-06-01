%Построить поверхности, используя surf, surfc и mesh:
clc, close all

[u1,v1] = meshgrid(0:0.1:5, -pi:pi/12:pi);
a = input("a(5) = ");
b = input("b(3) = ");
X = (a+b.*cos(v1)).*cos(u1);
Y = (a+b.*cos(v1)).*sin(u1);
Z = b.*sin(v1);

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