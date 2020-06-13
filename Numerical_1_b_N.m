clc, close all
clear

%
a = 0;
b = 13;
m = 100;

h = 0.01;
eps = 0.001;
iterations = 5;

x = linspace(a,b,m);
f = @(x)sin(x)./x;
y = f(x);

plot(x,f(x),x,0*x,':');
grid on;
xlabel('x'); ylabel('y');
hold on;

y_minimal = min(y);
y_maximal = max(y);

if y_minimal < 0
    y_minimal = 1.1*y_minimal;
else
    y_minimal = 0.9*y_minimal;
end

if y_maximal > 0
    y_maximal = 1.1*y_maximal;
else
    y_maximal = 0.9*y_maximal;
end

y_limit = ([y_minimal,y_maximal]);
z = ginput(1);
x1 = z(1);
for i = 1:iterations
    yh = (f(x1+h)-f(x1))/h;
    x2 = x1-f(x1)/yh;
    
    P = plot(x,f(x)+yh*(x-x1),':', x1,f(x1),'*', x2,0,'*',x2,f(x2),'o');
    L = line([x1,x2],[0,f(x2)]);
    
    set(L,'LineStyle',':');
    x1 = x2;
    
    if  abs(f(x2)) < eps
       break;
    end
   
    disp('Paused, press any key');
    pause
   
    delete(P);
    delete(L);
end

hold  off
disp('End Iteration');