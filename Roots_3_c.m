clc, close all
clear

%
a = 0;
b = 4*pi;
m = 100;

x = linspace(a,b,m);
f = @(x)x.*sin(x)-cos(x);

plot(x,f(x),x,0*x,':');
xlabel('x'); ylabel('y');
grid on;
z = ginput(1);
[zr,fr] = fzero(f,z(1));
disp(zr);
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;