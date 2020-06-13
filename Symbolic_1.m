clc, close all
clear

syms x y;

%1
f1 = x^5+4*x^4-2*x^3-14*x^2-3*x-18;
f1 = factor(f1);
fprintf('#1: ');
disp(f1);

%2
f2 = x^3+x^2*y+x^2-2*x*y^2+x*y-2*y^2;
f2 = factor(f2);
fprintf('#2: ');
disp(f2);