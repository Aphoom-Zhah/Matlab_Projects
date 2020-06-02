%Построить полином наименьшей степени по таблице значений, найти корни
%полинома и построить график на отрезке, содержащем корни
clc, close all

%2
%Inputs
n = input('n = ');

x1 = 1:1:n;
y1 = x1.^(-1);

P1 = polyfit(x1,y1,1);
%
%Roots
r1 = roots(P1);
disp('In #2 roots are:');
disp(r1);
%
%Graph F(x)
x1 = linspace(-10,10,20);
f1 = polyval(P1,x1);
plot(x1,f1);
grid on;
hold on;
%
%Ox
X = 0;
Y = linspace(-10,10,100);
g = polyval(X, Y);
plot(Y,g);
grid on;
hold on;
%
%

%4
%Inputs
x2 = [-1,0,1,2,3];
y2 = [6,5,0,3,2];

P2 = polyfit(x2,y2,1);
%
%Roots
r2 = roots(P2);
disp('In #4 roots are:');
disp(r2);
%
%Graph F(x)
x2 = linspace(-2,10,100);
f2 = polyval(P2,x2);
plot(x2,f2);
grid on;
hold on;
%
%