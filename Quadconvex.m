function f = Quadconvex(x)
% -10*n <= x < = 10*n
n = length(x);
f = 0;
for i = 1:n
    f = f + (x(i) - i)^2;
end