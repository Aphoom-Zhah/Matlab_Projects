clc, close all

%
clear
global alpha beta

N = 100;
L1 = 0;
L2 = 1;
X = linspace(L1,L2,N);
for alpha = [2 4]
    for beta = [1 3]
        Y = func(X);

        plot(X,Y);
        hold on;
    end
end
grid on;
xlabel('x'); ylabel('f(x)');
legend({'a(2) b(1)', 'a(2) b(3)', 'a(4) b(1)', 'a(4) b(3)'},'Location','southwest')

xr = ginput(2);
legend('hide')
for alpha = [2 4]
    for beta = [1 3]
        [x_m,y_m] = fminbnd(@func,xr(1,1),xr(2,1));
        hold on;
        plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
        hold off;
    end
end

function F = func(x)
global alpha beta
F = x.^alpha.*exp(-beta.*x);
end