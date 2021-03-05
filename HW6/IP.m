%% Compute matrix Frobenius inner product
% Used in HW6
% Author: Chunyang Liao

function [s] = IP(V,W)

s = sum(sum(V.*W));

end