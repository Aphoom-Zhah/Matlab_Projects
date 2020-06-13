clc, close all
clear

syms x;

%1
f1 = (sqrt(1-x^2))./x^2;
integral_1 = int(f1);
fprintf('#1: ');
disp(integral_1);

%2
f2 = 1/sin(x)^3;
integral_2 = int(f2);
fprintf('#2: ');
disp(integral_2);

%3
f3 = (sin(2*x)+1)^(1/7)*cos(2*x);
integral_3 = int(f3);
fprintf('#3: ');
disp(integral_3);

%4
f4 = (15*sqrt(x+3))/((x+3)^2*sqrt(x));
integral_4 = int(f4,1/8,1);
fprintf('#4: ');
disp(integral_4);

%5
f5 = 1/(1+x^2);
integral_5 = int(f5,0,inf);
fprintf('#5: ');
disp(integral_5);

%6
f6 = 1/(x^2-1);
integral_6 = int(f6,-2,2);
fprintf('#6: ');
disp(integral_6);

%7
f7 = log(sin(x));
integral_7 = int(f7,0,pi/2);
fprintf('#7: ');
disp(integral_7);