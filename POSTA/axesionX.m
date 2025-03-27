function [Best,fBest] = axesionX(funfcn,Best,fBest,SE,Range,Omega)
[Best,fBest,delta] = update_delta(funfcn,Best,fBest,SE,Range,Omega);
for i = 1:10
    [Best,fBest] = axesion(funfcn,Best,fBest,SE,Range,delta);
end