clc, close all
clear

syms x;

%1    
f1 = atan(x)/2 - x./(2*(1+x.^2).^2);
f1 = diff(f1);
SimpleDiff1 = simplify(f1);
fprintf('#1: ');
disp(SimpleDiff1);

%2
f2 = 3*x^4 - 14*x^3+12*x^2+24*x+6;
f2 = diff(f2);
SimpleDiff2 = simplify(f2);
fprintf('#2: ');
disp(SimpleDiff2);

%3
f3 = (sin(3*x)-cos(3*x)).^2;
f3 = diff(f3);
SimpleDiff3 = simplify(f3);
fprintf('#3: ');
disp(SimpleDiff3);

%4
f4 = log(x^2+2)/2 + (2 - x)/(4*(x^2 + 2)) - 1/(4*sqrt(2))*atan(x/sqrt(2));
f4 = diff(f4);
SimpleDiff4 = simplify(f4);
fprintf('#4: ');
disp(SimpleDiff4);

%5
f5 = 1/6*log((x-3)/(x+3));
f5 = diff(f5);
SimpleDiff5 = simplify(f5);
fprintf('#5: ');
disp(SimpleDiff5);