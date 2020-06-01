%Построить поверхности, используя surf, surfc и mesh:
clc, close all

[X, Y] = meshgrid(-10:0.5:10,-10:0.5:10);
a = input("a(5) = ");
Z = a.*X.*exp(-X.^2-Y.^2);

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