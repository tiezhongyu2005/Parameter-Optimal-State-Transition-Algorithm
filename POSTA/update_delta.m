function [globalBest,globalfBest,delta] = update_delta(funfcn,Best,fBest,SE,Range,Omega)
delta = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    State = op_axes(Best,SE,Omega(i)); 
    State = bound(State,Range);
    [newBest,newfBest] = selection(funfcn,State);
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        delta = Omega(i);
    end
end
