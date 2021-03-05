%% Homework 6 Problem 1
% Conjugate Gradient Algorithm
% Author: Chunyang Liao
function [idx,error] = CG(x,b,N)

Ax = a5ev(x,N);
xn = sqrt(IP(Ax,x));
p = -Ax;
r = p;
error = 1;
idx = 0;
while (error>0.01)
    Ap = a5ev(p,N);
    App = IP(Ap,p);
    al = IP(r,p)/App;
    x = x + al*p;
    r = r - al*Ap;
    be = IP(r,Ap)/App;
    p = r - be * p;
    
    error = sqrt(IP(a5ev(x,N),x))/xn;
    idx = idx+1;
end

end