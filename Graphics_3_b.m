%Построить поверхности, используя surf, surfc и mesh:
clc, close all

[a1, b1] = meshgrid(-2*pi:pi/12:2*pi,-2*pi:pi/12:2*pi);
a = input("a(5) = ");
c = input("c(3) = ");
X = a.*cosh(a1).*cos(b1);
Y = a.*cosh(a1).*sin(b1);
Z = c.*sinh(a1);

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