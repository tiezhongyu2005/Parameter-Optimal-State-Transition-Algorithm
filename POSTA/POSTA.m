function [Best,fBest,histfBest] = POSTA(funfcn,SE,Range,maxIter)
% parameter setting
Omega = [1,1e-1,1e-2,1e-3,1e-4,1e-5,1e-6,1e-7,1e-8];

% initialization
Best = initialization(Range); fBest = feval(funfcn,Best);

% iterations
histfBest = zeros(maxIter,1);
for iter = 1:maxIter

    [Best,fBest] = expansionX(funfcn,Best,fBest,SE,Range,Omega);
    [Best,fBest] = rotationX(funfcn,Best,fBest,SE,Range,Omega);
    [Best,fBest] = axesionX(funfcn,Best,fBest,SE,Range,Omega);
    
    fprintf('iter=%d      ObjVal=%g\n',iter,fBest);
    histfBest(iter) = fBest;
end



