%% Homework 1: Bisection Method
%  By: Chunyang Liao
% This m.file contains bisection method, whcih is used to
% find a root of a given function f.
% There are four inputs:
% a: the left end-points of interval
% b: the right end-poins of interval
% n: number of iteration
% f: function that you want to find its roots
% There are two output:
% root: the extimated root of function f.
% error: approximated error bound. If the root is exact, report no error.

function [root,error] = bisection(a,b,n,f)

error = (b-a)/(2^n);
if sign(f(a))==0
    root = a;
    error = 0;
    fprintf('The root is exact (No error)');
    return;
end

if sign(f(b))==0
    root = b;
    error = 0;
    fprintf('The root is exact (No error)');
    return;
end

if sign(f(a))==sign(f(b))
    fprintf("Inout error\n");
    root =NaN(1);
    return;
end

for i=1:n
    ave = (a+b)/2;
    fave = f(ave);
    s = sign(fave);
    if s==0
        root = ave;
        error = 0;
        fprintf('The root is exact (No error)');
        return;
    end
    if s == sign(f(a))
       a = ave;
    else
        b = ave;
    end
end
root = ave;
end
