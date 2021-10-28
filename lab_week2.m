%%
clear all;clc;

% Factorial using for
n = 6;
ans = 1;

for i=1:n
    ans = ans*i;  
end

ans

%%
clear all;clc;
% Factorial using vector

n = 1:5
ans = 1

for i=n
    ans = ans*i
end

%%
clear all;clc;
% as a function

%{
factorial(5)


function fact = factorial(n)
    fact = 1
    for i=1:n
        fact = fact*i
    end
end
%}

%%
clear all;clc;

% recursive function

%{
factorial(5)

function fact = factorial(n)

    if n == 1 || n == 0
        fact = 1;
    else
        fact = n*factorial(n-1);
    end
    

end
%}

%%
clear all;clc;

Gs = tf(1,[1 1]);
[y1,t] = step(Gs);
info1 = stepinfo(Gs);
ts1 = info1.SettlingTime;

Ts = feedback(Gs,1);
[y2,t] = step(Ts);
info2 = stepinfo(Ts);
ts2 = info2.SettlingTime;

figure(1);
subplot(2,1,1);cla;hold on;grid on;

title(['open loop ' 'ts: ' num2str(ts1)])
plot(t,y1);
subplot(2,1,2);cla;hold on;grid on;
plot(t,y2);
title(['closed loop ' 'ts: ' num2str(ts2)]);






