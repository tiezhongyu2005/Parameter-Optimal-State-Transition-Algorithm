function State = bound(State,Range)
Lb = repmat(Range(1,:),size(State,1),1);
Ub = repmat(Range(2,:),size(State,1),1);
State  = min(max(State,Lb),Ub);
