function V = vandermond(F, X)
n = length(F);
V = zeros(n);

for i = 1 : n
    for j = 1 :n
        V(i,j) = F{j}(X(i));
    end
end

end