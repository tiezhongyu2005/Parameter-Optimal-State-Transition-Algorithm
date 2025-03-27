function [Best,fBest] = rotationX(funfcn,Best,fBest,SE,Range,Omega)
[Best,fBest,alpha] = update_alpha(funfcn,Best,fBest,SE,Range,Omega);
for i = 1:10
    [Best,fBest] = rotation(funfcn,Best,fBest,SE,Range,alpha);
end