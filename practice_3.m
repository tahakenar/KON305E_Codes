%%
clear all;clc;
%----------------- 3D PLOT EXAMPLE -------------------%


xData = 0:0.5:10;
yData = rand(1,21);
[X,Y]= meshgrid(xData,yData);

Z = sin(Y)-tanh(X);

surf(X,Y,Z,'EdgeColor','none')


%-----------------------------------------------------%

%%
clear all;clc;

%--------------- ANONYMOUS FUNCTIONS -----------------%

% Functions as one-line expressions

function_1 = @(x) log(1/x);

function_2 = @(x,y) x+y;

% Additional: Persistent variables: The same as 'static' variables in C
% language

%-----------------------------------------------------%

%%
clear all;clc;
%--------------- MATHEMATICS STUFF -------------------%

% Defining an idendity matrix
eye(4)

% Matrix determinant
matA = rand(3,3);
det(matA)

% Matrix trace
trace(matA)

v1 = [1 2 3];
v2 = [4 5 6];

% Dot product
dot(v1,v2)

% Cross product
cross(v1,v2)

% Eigenval. & Eigenvec.

sys = [2 3; 4 5]; 
[eVec, eVal] = eig(sys)

%-----------------------------------------------------%




