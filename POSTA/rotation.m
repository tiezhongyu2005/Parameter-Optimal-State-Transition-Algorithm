function [Best,fBest,flag] = rotation(funfcn,Best,fBest,SE,Range,alpha)
flag = 0;
oldBest = Best;
State = op_rotate(Best,SE,alpha); 
State = bound(State,Range);
[newBest,fnewBest] = selection(funfcn,State);
if fnewBest < fBest
    fBest = fnewBest;
    Best = newBest;
    flag = 1;
end

if flag ==1
    State = op_translate(oldBest,newBest,SE,1);
    State = bound(State,Range);
    [newBest,fnewBest] = selection(funfcn,State);
    if fnewBest < fBest
        fBest = fnewBest;
        Best = newBest;
    end
end


