%% 
clear all;clc;
%---------------------- ARRAYS ----------------------%

% defining an array
arr = [1 2 3];


% defining a matrix
matrixA = [11 12 13;21 22 23; 31 32 33]; 

matrixA(1,:) % get the first row
matrixA(:,1) % get the first column
matrixA(1,2) % first row, second column

% create a matrix such that all the elements are zero
matrixZero = zeros(3,5);     % 3x5 matrix full of zeros

% the same as above, but only with 1 instead of zeros
matrixOne = ones(5,3);       % 5x3 matrix full of ones

% creating equally spaced vectors
vectorA = 0:0.2:10;          % start:step:end


matrixRand = rand(3,3)

transpose(matrixRand)        % transpose of a matrix
inv(matrixRand)              % inverse of a matrix

matrixA*matrixRand           % matrix multiplication
matrixA.*matrixRand          % element-wise multiplication

%-----------------------------------------------------%

%%
clear all;clc;

%------------------- STRUCTURES ----------------------%

% defining a struct
Student(1) = struct('Name','Emir','Surname','Kenar','Number',111);

% accessing the elements of a struct
Student(1).Name
Student(1).Number

% an alternative way to define a struct
Student.Name = 'Emir Taha';
Student.Surname = 'Kenar'; 

%-----------------------------------------------------%

%%
clear all;clc;

%---------------- ROUNDING FUNCTIONS -----------------%

ceil(1.4444)                    % rounds toward pos. inf.
floor(1.2344)                   % rounds toward neg. inf.
round(1.6)                      % rounds toward neares dec. or int
%-----------------------------------------------------%







