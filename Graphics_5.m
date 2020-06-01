%Построить поверхность, заданную неявным уравнением:
clc, close all

[X, Y, Z] = meshgrid(-3:0.1:3);
f = (-X.^2.*Z.^3)-((9.*Y.^2.*Z.^3)./80)+(X.^2+(9.*Y.^2)./4+Z.^2-1).^3;
C = 0;

p = patch(isosurface(X,Y,Z,f,C));
isonormals(X,Y,Z,f,p);
set(p,'FaceColor','red','EdgeColor','none');
daspect([1 1 1]);
view(3);
axis tight
camlight
lighting gouraud