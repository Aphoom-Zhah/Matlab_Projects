clc, close all
clear

%Building function
syms x;
f = exp(1/(1-x.^2))./(1+x^2);
fplot(f,[-7 7]);

%Finding asymptotes
y = linspace(-5,5,100);
ylim([-1 15])
xlim([-6 6])
grid on
hold on

%Finding and building extreme points
f_diff = diff(f);
extremum = solve(f_diff,0);

for j=1:length(extremum)
    if isreal(extremum(j)) == 1
        a = subs(f,x,extremum(j));
        plot(extremum(j),a,'o');
    end
end

%Finding and building inflection points
f_diff1 = diff(f_diff);
inflection = solve(f_diff1,0);

point_9 = subs(f,x,inflection(9));
point_4 = subs(f,x,inflection(4));
point_5 = subs(f,x,inflection(5));
point_8 = subs(f,x,inflection(8));

plot(inflection(9),point_9,'x',inflection(4),point_4,'x',inflection(5),point_5,'x',inflection(8),point_8,'x');

%Building asymptotes
plot(0*y+1,y,'--', 0*y-1,y,'--');