%% MATH 609 Homework 3 Trigonometric Interpolation.
% By: Chunyang Liao
% trigeval function is DFT+ in lecture notes.
% Given coefficient vector c, we compute the function value at uniform
% partition data points.
% Input: c is a vector which is the Fourier coefficient
%        N is the number of interpolation conditions
% Output: g will be a vector representing function value. 


function g = trigeval(c,N)

d = [c(N:2*N);c(1:N-1)];

range = 0:2*N-1;
DFT_p = zeros(2*N,2*N);
for m=1:2*N
    DFT_p(m,:) = exp(1i*(m-1)*pi*range/N);
end

g = DFT_p * d;

end