function State = op_rotate(Best,SE,alpha)
%rotation
n = length(Best);
u = 2*rand(SE,n)-1;
Rr = rand(SE,1);
State = repmat(Best,SE,1) + alpha*repmat(Rr,1,n).*u./repmat(sqrt(sum(u.^2,2)),1,n); 
