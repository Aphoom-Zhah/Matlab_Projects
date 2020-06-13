clc, close all
clear

%
a = input("a = ");

answer = fzero(@(x)x^2-a,0);
fprintf('answer: %d\n', answer);