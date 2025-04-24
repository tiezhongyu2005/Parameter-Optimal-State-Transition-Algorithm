clear all             % Clear all variables
clc                   % Clear the command window
currentFolder = pwd;  % Get the current working directory
addpath(genpath(currentFolder)) % Add current directory and all subfolders
warning('off')        % Disable warnings

% parameter setting
funfcn = 'Rosenbrock'; % Function handle
n = 10;                % Dimensionality (number of variables)
Range = repmat([-30;30],1,n); %lower and upper bound
maxIter = 1e3;         % maximum number of iterations

tic
[Best,fBest] = POSTA(funfcn,n,Range,maxIter);
toc