clc, close all
clear

%
a = 0;
b = 2.3*pi;
m = 100;

x = linspace(a,b,m);
f = 'sin(x).^2 + cos(x)/2 - cos(x)./x - 1/2';

plot(x,eval(f),x,0*x,':');
xlabel('x'); ylabel('y');
grid on;
z = ginput(1);
[zr,fr] = fzero(f,z(1));
disp(zr);
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;