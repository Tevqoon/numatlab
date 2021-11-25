function V = cholesky(A) 

% Razcep Choleskega

% Bor Plestenjak

n = size(A,2);
V = zeros(n);
for k = 1 : n 
   V(k,k) = sqrt(A(k,k)-V(k,1:k-1)*V(k,1:k-1)');
   for j = k+1 : n
       V(j,k) = (A(j,k)-V(j,1:k-1)*V(k,1:k-1)')/V(k,k);
   end
end
   