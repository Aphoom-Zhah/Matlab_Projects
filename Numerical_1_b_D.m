clc, close all
clear

%

a = 0;
b = 13;
m = 100;

h = 0.01;
eps = 0.001;
iterations=5;

x = linspace(a,b,m);
f = @(x)sin(x)./x;
y = f(x);

plot (x,f(x),x,0*x,':');
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

if y_maximal>0
    y_maximal = 1.1*y_maximal;
else
    y_maximal = 0.9*y_maximal;
end

axis([a,b,y_minimal,y_maximal]);

z = ginput(2);

z1 = z(1,1);
z2 = z(2,1);

f1 = f(z1);
f2 = f(z2);

z = (z1+z2) / 2;

y = f(z);
P = plot(z1,0,z2,0,z,0);
if f1*f2 > 0
        disp('Error: Wrong points');
end

for i = 1:iterations
    z = (z1+z2)/2;
    y = f(z);
    delete(P);
    P = plot(z1,0,'*',z2,0,'*',z,0,'--');
    
    if  y*f1 < 0
        z2 = z;
    else
        z1 = z;
    end
    
    if abs(f(z)) < eps 
        break;
    end
end

hold off