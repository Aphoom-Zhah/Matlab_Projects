%Вычисллить, пользуясь схемой Горнера:
clc, close all

%Все задачи этого номера решаются по нижеследующему алгоритму путем замены
%значений P1(заданного полинома) и x0(заданного значения)

%Задание полинома, производной и x0
syms x;
P1 = x^5 + (1+2*1i)*x^4 - (1+3*1i)*x^2 + 7;
P2 = diff(P1);
x0 = -2-1i;
%
%Вычисление по схеме Горнера
P1 = horner(P1);
P2 = horner(P2);
disp(P1);
disp(P2);

P1 = subs(P1, x, x0);
P2 = subs(P2, x, x0);
%
%Проверка правильности найденных значений
P1_test = sym2poly(P1);
P2_test = sym2poly(P2);

P1_test = polyval(P1_test, x0);
P2_test = polyval(P2_test, x0);
%
%Вывод
fprintf('P(x0) = %d, and correct answer is %d \n', P1, P1_test);
fprintf('P''(x0) = %d, and correct answer is %d \n', P2, P2_test);
%