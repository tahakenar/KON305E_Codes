%%
clear all;clc;

% QUESTION 1

                            % Given values for the question
V = 2000;
R = 20;

                            % Define the function in the question and take its derivative
syms x;
f_x = pi*x^2*(3*R-x)/3 - V;
df_x = diff(f_x,x);
fplot(f_x,[5.8,6.8]);grid on;hold on;

                            % Pre-defined stuff for Newton-Raphson method
max_iter = 100;             % upper iteration limit
tr_err = 0.00001;           % error treshold
iter = 0;                   % to check iteration num.

                            % We need an initial guess, that can be made by looking at the plot of the
                            % given function.
x_i = 10;                   % initial guess



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


%%
clear all;clc;

% QUESTION 2

syms t;

y_t = exp((t^4)/4 - 2.1*t);         % function y(t)
dy_t = y_t*t^3 - 2.1*y_t;           % function y'(t)

h = 0.5;                            % given step size

t_v = 0:h:2;                        % given interval
t_dense_v = 0:0.01:2;               % dense interval for plotting purposes

ti = 0;
yi = 1;                             % initial x and y

f = @(t,y) (y*t^3 - 2.1*y);         % function f (derivative of y)
y(1) = 1;

for i=1:length(t_v)-1
    k1 = f(t_v(i),y(i));
    k2 = f(t_v(i)+h,y(i)+k1*h);
    y(i+1) = y(i)+h/2*(k1+k2);
end

plot(t_v,y);
ylim([0,2]);
hold on; grid on;
fplot(y_t,[0,2]);
legend('Approx. using Heun','Real function');
title('Heun Method');
%fplot(y,[0,2]);


%%
clc; clear all;
% QUESTION 3


syms s;
pol = s^3-3*s^2+3*s-5;                          % Example polynomial

roots = findRoots(pol);

vpa(roots,3)

function poles=findRoots(poly)
    syms s;
    
    coefs = coeffs(poly,s,'all');
    order = length(coefs)-1;                    % Checking the degree of the polynomial
    
    c_apprx_v = sym('c',[1 order])              % Current apprx.
    n_apprx_v = sym('n',[1 order])              % Next apprx.
     
                                                % Generates initial values
                                                % to start iterative
                                                % process
                                                
                                                
   
    for i=1:order
        c_apprx_v(i) = (0.4 + 0.9*1i)^(i-1);
    end
    
    for i=1:2
        for j=1:order
            disp(['Step: ' num2str(j)])
            val = double(c_apprx_v(j));                 % Current value from vector
            numerator = double(subs(poly,s,val));
            denominator = 1;
            temp_v_c = c_apprx_v; temp_v_c(j) = [];
            temp_v_n = n_apprx_v; temp_v_n(j) = [];
            
            disp(['Current value: ' num2str(val)]);
            for k=1:j-1
                disp('New ones')
                vpa(temp_v_n(k),2)
                denominator = denominator * (val - temp_v_n(k));
            end
            for k=j:order-1
                disp('Old ones')
                vpa(temp_v_c(k),2)
                denominator = denominator * (val - temp_v_c(k));
            end
            
            n_apprx_v(j) = val - numerator/denominator;
        end
    end
    
    
    poles = n_apprx_v;

end




