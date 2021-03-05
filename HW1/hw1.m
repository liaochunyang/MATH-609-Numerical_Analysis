%% Homework 1 main function
format long     % control the digits of output
a = -2;         % the left endpoint of interval
b = -1;         % the right endpoint of interval
n = 20;         % number of iterations
fun=@(x) 9+x*(-27+x*(-28+x*(68+x*48)));  % function in P1
fun2=@(x) sin(x)/x-0.5;                  % function in P2
[root,error] = bisection(a,b,n,fun)      