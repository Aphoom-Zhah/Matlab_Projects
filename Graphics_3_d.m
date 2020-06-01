%Построить поверхности, используя surf, surfc и mesh:
clc, close all

a1_min = input("alpha_min(5) = ");
a1_max = input("alpha_max(10) = ");
[a1,b1] = meshgrid(a1_min:0.1:a1_max, -pi:pi/12:pi);
a = input("a(5) = ");
b = input("b(3) = ");
X = a.*a1.*cosh(b1);
Y = b.*a1.*sinh(b1);
Z = a1.^2;

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