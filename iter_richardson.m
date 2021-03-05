%% Function for Homework/Programming 5 Problem 3
% Using Richardson's method to compute Ax=0, where A is from 1-D finite
% element method.
% This function shows the relation between number of iterations with
% differet choice of N and error bound epsilon. The choice of iteration
% parameter is also considered.
% Author: Chunyang Liao

function [j_tau,x_tau,j_opt,x_opt,K] = iter_richardson(N,epsilon)

h = 1/N;

A = (2*diag(ones(N-1,1)) + diag(-ones(N-2,1),1) + diag(-ones(N-2,1),-1))/h;
B = h/6*(4*diag(ones(N-1,1)) + diag(ones(N-2,1),1) + diag(ones(N-2,1),-1));
eigen = @(t) 6*h^(-2) * (1-cos(t*pi/N))/(2+cos(t*pi/N));
K = eigen(N-1)/eigen(1);
tau = 1/eigen(N-1);
tau_opt = 2/(eigen(N-1)+eigen(1));
j_tau = 0;
j_opt = 0;

x_tau = ones(N-1,1);
x_opt = ones(N-1,1);

while norm(x_tau)>epsilon
x_tau = x_tau - tau*(B\(A*x_tau));
j_tau = j_tau+1;
end

while norm(x_opt)>epsilon
x_opt = x_opt - tau_opt*(B\(A*x_opt));
j_opt = j_opt+1;
end

end