function y = Rastrigin(x)
% Rastrigin function
% -5.12 <= x <= 5.12
n = length(x); 
s = 0;
for j = 1:n
    s = s+(x(j)^2-10*cos(2*pi*x(j))); 
end
y = 10*n+s;