%%
clear all; clc;
%{

Plot the step response of G(s) = 1/(s+1) using

    * the inverse Laplace transform 
    * the step function
    * the step function and customizing the plot

%}

% USING INVERSE LAPLACE %

syms s;
Gss = 1/(s+1);
Rss = 1/s;
Yss = Gss*Rss;

syms t;
Yts = ilaplace(Yss);              % Inverse laplace of the given tf

t_v = 0:0.05:10;                  % Time vector for graph
x = zeros(size(t_v));             % x vector for graph

for i=1:length(t_v)
    x(i) = double(subs(Yts,t,t_v(i)));
end

figure(1);grid on;hold on;
plot(t_v,x);

%%
clear all; clc;

% USING STEP FUNCTION

Gs = tf(1,[1 1]);
t_v = 0:0.05:10;

[y,t_v] = step(Gs,t_v);
plot(t_v,y);grid on;

%%
clear all;clc;

t = 0:0.05:10;
poles = [1 2 4];
colors = ['b' 'r' 'm'];

figure(1);grid on;hold on;
for i=1:length(poles)
    Gs = tf([poles(i)],[1 poles(i)]);
    [y,t] = step(Gs,t);
    plot(t,y,'Color',colors(i));
end

figure(2);grid on;hold on;
for i=1:length(poles)
    Gs = tf([poles(i)],[1 poles(i)]);
    [ps,zs] = pzmap(Gs);
    for k=1:length(ps)
        plot(real(ps(k)),imag(ps(k)),'x','Color',colors(i));
    end
    for k=1:length(zs)
        plot(real(zs(k)),imag(zs(k)),'o','Color',colors(i));
    end
end




