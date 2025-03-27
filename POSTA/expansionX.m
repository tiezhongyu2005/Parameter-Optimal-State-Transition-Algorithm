function [Best,fBest] = expansionX(funfcn,Best,fBest,SE,Range,Omega)
[Best,fBest,gamma] = update_gamma(funfcn,Best,fBest,SE,Range,Omega);
for i = 1:10
    [Best,fBest] = expansion(funfcn,Best,fBest,SE,Range,gamma);
end
