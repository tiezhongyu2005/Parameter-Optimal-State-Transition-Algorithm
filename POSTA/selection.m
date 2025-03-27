function [Best,fBest] = selection(funfcn,State)
fState = fitness(funfcn,State);
[fBest,index] = min(fState);
Best = State(index,:);