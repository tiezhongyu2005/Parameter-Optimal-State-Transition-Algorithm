function  Best = initialization(Range,n)
Lb = Range(1,:);
Ub = Range(2,:);
Best = Lb + rand(1,n).*(Ub - Lb);
