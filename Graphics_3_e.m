%Построить поверхности, используя surf, surfc и mesh:
clc, close all

u_max = input("u_max(10) = ");
v_min = input("v_min(5) = ");
v_max = input("v_max(10) = ");
[u,v] = meshgrid(0:0.1:u_max, v_min:0.1:v_max);
a = input("a(5) = ");
X = a.*u.^2;
Y = 2.*a.*u;
Z = v;

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