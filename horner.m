function [p] = horner(a, x)

n = length(a);
p = zeros(1,n);
p(1) = a(1);

for i = 2:n
    p(i) = p(i-1)*x + a(i);
end

end