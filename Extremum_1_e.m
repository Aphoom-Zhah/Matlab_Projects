clc, close all

%
clear
global m
m = 3;

N = 100;
L1 = 0;
L2 = 2*pi;
X = linspace(L1,L2,N);
Y = func(X);

plot(X,Y);
grid on;
xlabel('x'); ylabel('f(x)');

xr = ginput(2);
[x_m,y_m] = fminbnd(@func,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;


function F = func(x)
global m
d = [3, 5, 2, -1];
F = 0;
for k=1:m
    F = F + (d(k) - sin(k.*x)).^2;
end
end