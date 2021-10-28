%% 
clear all;clc;
%--------------- SYMBOLIC TOOLBOX --------------------%

% defining a symbolic var. and using it in an expression
syms x;
poly = x^2 + 2*x + 1

% getting the coeffs. of an expression
coef = coeffs(poly,x,'all')

% solving a symbolic equation
sol = solve(poly == 0)

%-----------------------------------------------------%

%%
clear all;clc;
%------------ CONTROL SYSYEM TOOLBOX -----------------%

% defining a transfer function using tf
plant = tf([1 3],[1 2 1])

% obtaining gain, zeros and poles of tf
zpk(plant)

% steady state representation
system = ss([1,2;-3,-4],[1;0],[1,0],0)

% to find closed loop tf / negative feedback example
Ts = feedback(plant,1)

% to get step response of a system
step(Ts)

%-----------------------------------------------------%

%% 
clear all;clc;
%-------------------- FUNCTIONS ----------------------%



-
sum(3,5)

function return_val = sum(x,y)
    return_val = x+y;
end


%-----------------------------------------------------%


