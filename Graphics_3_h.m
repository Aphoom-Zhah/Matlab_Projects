%Построить поверхности, используя surf, surfc и mesh:
clc, close all

a = input("a(5) = ");
b = input("b(3) = ");
[Z, b1] = meshgrid(0:0.1:5, -pi:pi/12:pi);
r = a.*(z+b).^2.*log(z+b);
X = r.*sin(b1);
Y = r.*cos(b1);

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