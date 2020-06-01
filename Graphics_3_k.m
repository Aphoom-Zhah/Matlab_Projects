%Построить поверхности, используя surf, surfc и mesh:
clc, close all

a = 1;
m1 = 0.2;
o1 = 4;
f1 = pi/2;
[r, u1] = meshgrid(-5:0.1:5, -pi:pi/12:pi);
X = r.*cos(u1);
Y = r.*sin(u1);
Z = a.*exp(-m1.*r).*sin(o1.*r+f1);

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