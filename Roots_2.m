clc, close all
clear

%
a = -3;
b = 3;
m = 100;

syms x
F = x.^2+2.*x-1-sin(x) == 0;
answer = vpasolve(F);
fprintf('answer: %s\n', answer);

x = linspace(a,b,m);
f = 'x.^2+2.*x-1-sin(x)';
plot(x,eval(f),x,0*x,':');
xlabel('x'); ylabel('y');
z = ginput(1);
[zr,fr] = fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;

