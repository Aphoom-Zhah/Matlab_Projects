clc, close all
clear

%
syms x
f = 'x.^2+1';

SolveAnswer = solve(eval(f));
disp(SolveAnswer);

FzeroAnswer = fzero(f,0);
fprintf('\n');
disp(FzeroAnswer);

fprintf('Result: fzero can''t solve equation with complex answers\n')