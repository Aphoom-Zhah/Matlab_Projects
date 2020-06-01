%Построить поверхности, используя surf, surfc и mesh:
clc, close all

b = input("b(3) = ");
[r, b1] = meshgrid(0:0.1:5, -pi:pi/12:pi);
X = r.*cos(b1);
Y = r.*sin(b1);
Z = b./r;

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