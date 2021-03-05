%% Homework 6 Problem 1
% Preconditioned Conjugate Gradient Algorithm
% Author: Chunyang Liao
function [idx,error] = pre_CG(x,b,N,a1,a2)

Ax = a5ev_coef(x,N,a1,a2);
r_tilde = b - Ax;
p = lapinv(r_tilde,N);
r = p;

xn = sqrt(IP(Ax,x));

error = 1;
idx = 0;
while (error>0.01)
    Ap = a5ev_coef(p,N,a1,a2);
    App = IP(Ap,p);
 
    al = IP(r_tilde,p)/App;
    x = x + al*p;
    
    r_tilde = r_tilde - al*Ap;
    r = lapinv(r_tilde,N);
    
    be = IP(r,Ap)/App;
    p = r - be * p;
    
    error = sqrt(IP(a5ev_coef(x,N,a1,a2),x))/xn;
    idx = idx+1;
end

end