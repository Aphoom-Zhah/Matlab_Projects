clc, close all
clear

%
a = -2*pi;
b = 6*pi;
m = 100;

x = linspace(a,b,m);
f = '5.*exp(-0.1*x).*sin(x) - 0.1*x';

plot(x,eval(f),x,0*x,':');
xlabel('x'); ylabel('y');
grid on;
z = ginput(1);
[zr,fr] = fzero(f,z(1));
disp(zr);
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;