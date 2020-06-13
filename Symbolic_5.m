clc, close all
clear

syms n x;

%1
Summ1 = symsum(1/(n+1)^2, n, 0, inf);
fprintf('#1: ');
disp(Summ1);

%2
Summ2 = symsum((-1).^((n.^2+n)/2).*n./2.^n, n);
fprintf('#2: ');
disp(Summ2);

%3
Summ3 = symsum(x.^n, n, 0, inf);
fprintf('#3: ');
disp(Summ3);

%4
Summ4 = symsum((3-x)^(2.*n)./sqrt(n), n, 1, +inf);
fprintf('#4: ');
disp(Summ4);

%5
Summ5 = symsum(1./(x-n).^3, n, -inf, +inf);
fprintf('#5: ');
disp(Summ5);