function State = op_expand(Best,SE,gamma)
% expansion
n = length(Best);
State = repmat(Best,SE,1) + gamma*randn(SE,n).*repmat(Best,SE,1);