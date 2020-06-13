clc, close all

%All other examples can be solved using this algorithm with replacement of
%P value

%Input Polynomial
syms x;
P = x^3 - 6.*x^2 + 15.*x - 14;
P = sym2poly(P);
%
%Roots
r = roots(P);
%
%Graph(P)
x = linspace(-10, 10, 100);
f = polyval(P, x);
plot(x, f);
grid on;
hold on;
%
%Ox
X = 0;
Y = linspace(-10, 10, 100);
g = polyval(X, Y);
plot(Y, g);
grid on;
hold on;
%