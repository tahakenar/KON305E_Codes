
clear all;clc;

% QUESTION 1
                      % Given values for the question
V = 2000;
R = 20;
                      % Define the function in the question and take its derivative
syms x;
f_x = pi*x^2*(3*R-x)/3 - V;
df_x = diff(f_x,x);
fplot(f_x,[0,9]);grid on;hold on;

                      % Pre-defined stuff for Newton-Raphson method
max_iter = 100;       % upper iteration limit
tr_err = 0.00001;     % error treshold
iter = 0;             % to check iteration num.

                      % We need an initial guess, that can be made by looking at the plot of the
                      % given function.
x_i = 10;             % initial guess

                      % Newton-Raphson Algorithm
for i=0:max_iter
    x_n = x_i - double(subs(f_x,x,x_i))/double(subs(df_x,x,x_i));
    disp(['Iteration: ' num2str(iter) '.  Current guess: ']);
    vpa(x_n,7)
    plot(x_n,double(subs(f_x,x,x_n)),'bx','LineWidth',2);
    if (abs(x_n-x_i)/x_i <= tr_err)
        break;
    end
    iter = iter+1;
    x_i = x_n;
end


                      % Plotting the given function and solution
plot(x_n,0,'ro','LineWidth',3);
legend('Graph of the function','Solution');
title('Approximation usin Newton-Raphson Method');

