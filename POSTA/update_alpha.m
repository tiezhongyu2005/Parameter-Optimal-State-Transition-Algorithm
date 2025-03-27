function [globalBest,globalfBest,alpha] = update_alpha(funfcn,Best,fBest,SE,Range,Omega)
alpha = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    State = op_rotate(Best,SE,Omega(i)); 
    State = bound(State,Range);
    [newBest,newfBest] = selection(funfcn,State);
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        alpha = Omega(i);
    end
end