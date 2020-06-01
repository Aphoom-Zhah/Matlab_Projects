%Построить поверхности, используя surf, surfc и mesh:
clc, close all

[b1,r] = meshgrid(-2*pi:pi/12:2*pi, -10:0.1:10);
p = input("p(3) = ");
X = r.*cos(b1);
Y = r.*sin(b1);
Z = r.^2./(2.*p);

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