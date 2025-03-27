clear all
clc
currentFolder = pwd;
addpath(genpath(currentFolder))
% parameter setting
warning('off')
SE =  30; % sample size
n = 10;% dimension
Range = repmat([-30;30],1,n);%lower and upper bound
maxIter = 1e3;% maximum number of iterations
funfcn = 'Rosenbrock';
tic
[Best,fBest] = POSTA(funfcn,SE,Range,maxIter);
toc