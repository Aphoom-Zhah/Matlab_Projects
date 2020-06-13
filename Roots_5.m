clc, close all
clear

%
a = -10;
b = 10;
m = 100;

syms x
f = 'cos(x) - exp(-0.001 + x.^2)';

SolveAnswer = vpasolve(eval(f));
disp(SolveAnswer);

FzeroAnswer = fzero(f,0);
disp(FzeroAnswer);

x = linspace(a,b,m);
plot(x,eval(f),x,0*x,':');
xlabel('x'); ylabel('y');