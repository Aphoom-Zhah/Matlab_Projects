clc, close all
clear

syms x y;

%1
f1 = exp(x);
Taylor1 = taylor(f1, x, 0, 'Order', 5);
fprintf('#1: ');
disp(Taylor1);
fplot(f1,[-5 5]);
hold on;
fplot(Taylor1,[-5 5]);
fprintf('\\Pause: press any key\\\n\n');
pause;
hold off;

%2
%Error in sym/taylor (line 128)
%tSym = mupadmex('symobj::taylor',f.s,x.s,a.s,options);
% 
% f2 = log(2*x-1);
% Taylor2 = taylor(f2, x, -1, 'Order', 3);
% fprintf('#2: ');
% disp(Taylor2);
% fplot(Taylor2,[-5 5]);
% hold on;
% fplot(f2,[-5 5]);
% fprintf('\\Pause: press any key\\\n\n');
% pause;
% hold off;

%3
f3 = sin(x)^2;
Taylor3 = taylor(f3, x, 0, 'Order', 10);
fprintf('#3: ');
disp(Taylor3);
fplot(Taylor3,[-5 5]);
hold on;
fplot(f3,[-5 5]);