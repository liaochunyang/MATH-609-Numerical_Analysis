%% Construct Hilbert matrix
% Remark: I only use one for loop.
% Author: Chunyang Liao
function A = hilbert_matrix(n)
A = zeros(n,n);

a = 1:n;

for i=1:n
    A(i,:) = 1./(a+i-1);
end

end
