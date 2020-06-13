clc, close all
clear

%
a = -5;
b = 5;
m = 100;
n = input('n = ');

x = linspace(a,b,m);
f = @(x)x.^n-1;

plot(x,f(x),x,0*x,':');
xlabel('x'); ylabel('y');
grid on;
z = ginput(1);
[zr,fr] = fzero(f,z(1));
disp(zr);
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;