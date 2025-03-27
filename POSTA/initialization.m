function  Best = initialization(Range)
Lb = Range(1,:);
Ub = Range(2,:);
Best = Lb + rand(1,length(Lb)).*(Ub - Lb);
