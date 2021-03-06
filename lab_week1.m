%% 
% Q1
clear all;clc;

x = true;

if x
    disp('True');
end
if x == false
    disp('False');
end

%%
% Q2
clear all;clc;

x = 23;

while x >= 20
    disp('Greater than or equal to 20');
    x = 0;
end

while x < 20
    disp('Less than 20');
    x = 20;
end

%%
% Q3
clear all;clc;

coin = 'YY';

if coin(1)=='Y'
    if coin(2) == 'Y'
        disp('tail tail');
    end
    if coin(2) == 'T'
        disp('tail head');
    end
end

if coin(1)=='T'
    if coin(2)=='Y'
        disp('head tail');
    end
    if coin(2)=='T'
        disp('head head');
    end
end

%%
% Q4
clear all;clc;

x = 1;

while x < 5
    disp([num2str(x) '. student']);
    x = x+1;
end

%%
% Q5
clear all;clc;

t = 0:0.01:4*pi;
x = sin(t);

x_rectf = zeros(1,length(t));


for i=1:length(t)
    if x(i) < 0
        x_rectf(i) = -x(i);
    else
        x_rectf(i) = x(i);
    end
end

plot(t,x)
hold on;
plot(t,x_rectf)

%%
% Q6
clear all;clc;

t = 0:0.01:4*pi;
x = zeros(1,length(t));

sum = 0;

for i=1:length(t)
    x(i) = sin(t(i));
    sum = sum + x(i)^2;
end
RMS = sqrt(sum/length(x))

%%
% Q7
clear all;clc;

t = 0:0.01:4*pi;
x = zeros(1,length(t));

peak = 0;

for i=1:length(t)
    x(i) = sin(t(i));
    if x(i) > peak
        peak = x(i);
    end
end

    
%%
% Q8 & Q9
clear all;clc;

%plotSine(0:0.01:4*pi,3,2)

function plotSine(t,A,f)

    x = zeros(1,length(t));
    
    for i=1:length(t)
        x(i) = A*sin(2*pi*f*t(i));
    end
    
    plot(t,x);

end

function x_dev = numericDerivative(xi,T)
    
    x_dev = zeros(size(x));
    for i = 1:length(t)-1
        xd(i)=(x(i+1)-x(i)/(t(2)-t(1));
    end
    xd(end) = xd(end-1);

end


