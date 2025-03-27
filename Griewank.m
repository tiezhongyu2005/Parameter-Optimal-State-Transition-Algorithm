function y = Griewank(x)
% Griewank function.
% -600 <= x <= 600
n = length(x); 
fr = 4000;
s = 0;
p = 1;
for j = 1:n; s = s+x(j)^2; end
for j = 1:n; p = p*cos(x(j)/sqrt(j)); end
y = s/fr-p+1;