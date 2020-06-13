clc, close all
clear

syms x;

%1  
f1 = x*exp(-x);
lim1 = limit(f1,x,inf);
fprintf('#1: ');
disp(lim1);

%2
f2 = tan(x).^tan(2*x);
lim2 = limit(f2,x,pi/4);
fprintf('#2: ');
disp(lim2);

%3
f3 = atan(1/(1-x));
lim3 = limit(f3,x,1,'right');
fprintf('#3: ');
disp(lim3);

%4
f4 = (7*x^3 + x^2 - 1)/(5*x^2 + 2*x + 1);
lim4 = limit(f4,x,inf);
fprintf('#4: ');
disp(lim4);

%5
h = input('h = ');
f5 = (sqrt(x+h) - sqrt(x))/h;
lim5 = limit(f5,x,0);
fprintf('\n#5: ');
disp(lim5);