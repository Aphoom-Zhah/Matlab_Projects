clc, close all

%
clear
global alpha

N = 100;
L1 = 0;
L2 = 1;
X = linspace(L1,L2,N);
for alpha = [2 4 8 12 18]
    Y = func(X);

    plot(X,Y);
    hold on;
end
grid on;
xlabel('x'); ylabel('f(x)');
legend({'alpha = 2', 'alpha = 4', 'alpha = 8', 'alpha = 12', 'alpha = 18'},'Location','southwest')

xr = ginput(2);
legend('hide')
for alpha = [2 4 8 12 18]
    [x_m,y_m] = fminbnd(@func,xr(1,1),xr(2,1));
    hold on;
    plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
    hold off;
end

function F = func(x)
global alpha
F = x.^alpha.*log(x);
end