 function [p] = hornerounder(a, x, b, m)

switch nargin
    case 2
        b = 2;
        m = 52;
    case 3
        b = 3;
end

n = length(a);
p = zeros(1,n);
p(1) = a(1);

for i = 2:n
    p(i) = rounder(rounder(p(i-1)*x,b,m) + a(i),b,m);
end

end