%% Homework 6 Problem 1 and Problem 3 
% Author: Chunyang Liao

clc;clear all;
%% Problem 1
iter = zeros(7,1);
err = zeros(7,1);
for i=2:8
    N = 2^i;
    x = ones(N,N);
    b = zeros(N,N);
    [idx,error] = CG(x,b,N);
    iter(i-1) = idx;
    err(i-1) = error;
end

%% Problem 3
% a1(x1,x2) = 1/2+x1  a2(x1,x2) = 1/2+x2
a1 = @(x,y) 1/2 + x;
a2 = @(x,y) 1/2 + y;
iter_1 = zeros(7,1);
err_1 = zeros(7,1);
for i=2:8
    N = 2^i;
    x = ones(N,N);
    b = zeros(N,N);
    [idx,error] = pre_CG(x,b,N,a1,a2);
    iter_1(i-1) = idx;
    err_1(i-1) = error;
end

%% Problem 3
% a1(x1,x2) = 1/10+x1  a2(x1,x2) = 1/10+x2
tic;
a1 = @(x,y) 1/10 + x;
a2 = @(x,y) 1/10 + y;
iter_2 = zeros(7,1);
err_2 = zeros(7,1);
for i=2:8
    N = 2^i;
    x = ones(N,N);
    b = zeros(N,N);
    [idx,error] = pre_CG(x,b,N,a1,a2);
    iter_2(i-1) = idx;
    err_2(i-1) = error;
end
toc;

%% Check One important Thing: 
% a5ev is computing A_0X and lapinv is computing BY.
% We also know that BA_0=I, thus BA_0X=X. Next few lines, we are verifying it.
N = 4;
X = rand(4,4)
lapinv(a5ev(X,N),N)

%% But we find that BAX \neq X
a1 = @(x,y) 1/2 + x;
a2 = @(x,y) 1/2 + y;
lapinv(a5ev_coef(X,N,a1,a2),N)