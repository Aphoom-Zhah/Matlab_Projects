%Построить график функции, используя plot3 и mesh:
clc, close all

a = input('a(10)= ');
[ X, Y ] = meshgrid(-10:0.5:10,-10:0.5:10);
Z = a.*sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2);

subplot(1,2,1);
plot3(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('plot3');

subplot(1,2,2);
mesh(X, Y, Z)
set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');
title('mesh');