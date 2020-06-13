clc, close all

%All other examples can be solved using this algorithm with replacement of
%F and P value

%
syms x;
F = x^4 + 2.*x^3 - x^2 - 4.*x -2;
P = x^4 + x^3 - x^2 - 2.*x - 2;
%
[G, M] = gcd(F, P);
fprintf('GCD: %s \nLinear combination:%s \n', G, M);
%