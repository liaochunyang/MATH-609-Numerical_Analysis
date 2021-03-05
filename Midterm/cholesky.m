%% Problem 2 part (b) Cholesky Factorization
% Algorithm based on the algorithm in lecture notes given by Dr.Pasciak.
% Author: Chunyang Liao

function L = cholesky(A)

k = size(A,1);

L = zeros(k,k);
L(1,1) = sqrt(A(1,1));

for i=2:k
    l = lower_triangle_solver(L(1:i-1,1:i-1),A(i,1:i-1)');
    L(i,1:i-1) = l';
    L(i,i) = sqrt(A(i,i) - L(i,1:i-1)*L(i,1:i-1)');
end
   
end
