function [globalBest,globalfBest,gamma] = update_gamma(funfcn,Best,fBest,SE,Range,Omega)
gamma = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    State = op_expand(Best,SE,Omega(i)); 
    State = bound(State,Range);
    [newBest,newfBest] = selection(funfcn,State);
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        gamma = Omega(i);
    end
end

