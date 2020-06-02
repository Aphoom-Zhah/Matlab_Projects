%«адать полином и найти графически его единственный вещественный корень:
clc, close all

P = [1,-3.55, 5.1, -3.1];
x = linspace(-10,10,100);

F = polyval(P,x);
plot(x,F);
grid on;
hold on;

X = 0;
Y = linspace(-10, 10,100);

F1 = polyval(X,Y);
plot(Y,F1);
grid on;

R = roots(P);
disp(R);