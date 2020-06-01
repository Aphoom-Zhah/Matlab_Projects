%Построить плоскость ax+by+cz+d=0
clc, close all
a = input('a= ');
b = input('b= ');
c = input('c= ');
d = input('d= ');
[ X, Y ] = meshgrid((-5 : 0.1 : 5));
Z = ( -a.*X - b.*Y - d)./c;
mesh(X, Y, Z)

set(gca, 'XGrid', 'on', 'YGrid', 'on', 'ZGrid', 'on');

