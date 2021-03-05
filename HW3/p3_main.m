%% MATH 609 Homework 3 Trigonometric Interpolation.
% By: Chunyang Liao
% This function is designed only for Problem 3
% Input: k is a parameter that determines the number of nodes.
%        f represents function
% Output: L^\infinity error at given nodes will be the output

function error = p3_main(k,f)

N = 2^k;

% interpolation points
j = 0:2*N-1;
h = pi/N;
x = j*h;

% interpolation points and data points used to compute error
jj = 0:4*N-1;
hh = pi/(2*N);
xp = (jj*hh)';

TF = f(x);
c1 = trigcoef(TF',N);
cp = [zeros(N,1);c1;zeros(N,1)];
F4N = trigeval(cp,2*N);
error = sqrt(norm(f(xp)-F4N)^2/(4*N));

end
