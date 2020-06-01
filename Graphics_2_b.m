%Построить график функции, используя plot3 и mesh:
clc, close all

[ X, Y ] = meshgrid(-10:0.5:10,-10:0.5:10);
Z = (-X.*sin(X)-Y.*sin(Y));

subplot(1,2,1);
plot3(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('plot3');

subplot(1,2,2);
mesh(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('mesh');