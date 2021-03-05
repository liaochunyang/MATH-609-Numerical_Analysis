%% MATH 609 Homework 3 Trigonometric Interpolation.
% By: Chunyang Liao
% trigcoef function is DFT- in lecture notes.
% Function is designed to compute Fourier coefficients.
% Input: TF is a vector which contains the true y-value at nodes.
%        N is the number of interpolation conditions
% Output: c will be a vector representing the Fourier coefficients. 

function c = trigcoef(TF,N)

DFE_m = zeros(2*N,2*N);
range = 0:2*N-1;

for m=1:2*N
    DFT_m(m,:) = exp(-1i*(m-1)*pi*range/N);
end

d = DFT_m * TF/(2*N);

c = [d(N+2:2*N);d(1:N+1)];

end
