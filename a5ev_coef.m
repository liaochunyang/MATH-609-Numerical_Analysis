%% Homework 6 Problem 2
% Author: Chunyang Liao

function [ax]=a5ev_coef(x,n,a1,a2)

h = 1/(n+1);
hs=1/(n+1)^2;
ax=zeros(n,n);

% the general case

k=1;
j=1;
ax(j,k)=(a1((j+1/2)*h,k*h)*(x(j,k)-x(j+1,k))+a1((j-1/2)*h,k*h)*x(j,k)+ a2(j*h,(k+1/2)*h)*(x(j,k)-x(j,k+1)) + a2(j*h,(k-1/2)*h)*x(j,k))/hs;
for j=2:n-1
ax(j,k)=(a1((j+1/2)*h,k*h)*(x(j,k)-x(j+1,k))+a1((j-1/2)*h,k*h)*(x(j,k)-x(j-1,k))+...
   a2(j*h,(k+1/2)*h)*(x(j,k)-x(j,k+1)) + a2(j*h,(k-1/2)*h)*x(j,k))/hs;
end
j=n;
ax(j,k)=( a1((j+1/2)*h,k*h)*x(j,k) + a1((j-1/2)*h,k*h)*(x(j,k)-x(j-1,k))+...
    a2(j*h,(k+1/2)*h)*(x(j,k)-x(j,k+1)) + a2(j*h,(k-1/2)*h)*x(j,k))/hs;
	

for k=2:n-1
	j=1;	
ax(j,k)=(a1((j+1/2)*h,k*h)*(x(j,k)-x(j+1,k))+a1((j-1/2)*h,k*h)*x(j,k)+...
   a2(j*h,(k+1/2)*h)*(x(j,k)-x(j,k+1)) + a2(j*h,(k-1/2)*h)*(x(j,k)-x(j,k-1)))/hs;
for j=2:n-1
ax(j,k)=(a1((j+1/2)*h,k*h)*(x(j,k)-x(j+1,k))+a1((j-1/2)*h,k*h)*(x(j,k)-x(j-1,k))+...
   a2(j*h,(k+1/2)*h)*(x(j,k)-x(j,k+1)) + a2(j*h,(k-1/2)*h)*(x(j,k)-x(j,k-1)))/hs;
end
j=n;
ax(j,k)=(a1((j+1/2)*h,k*h)*x(j,k)+a1((j-1/2)*h,k*h)*(x(j,k)-x(j-1,k))+...
   a2(j*h,(k+1/2)*h)*(x(j,k)-x(j,k+1)) + a2(j*h,(k-1/2)*h)*(x(j,k)-x(j,k-1)))/hs;
end

k=n;
j=1;
ax(j,k)=(a1((j+1/2)*h,k*h)*(x(j,k)-x(j+1,k))+a1((j-1/2)*h,k*h)*x(j,k)+...
   a2(j*h,(k+1/2)*h)*x(j,k) + a2(j*h,(k-1/2)*h)*(x(j,k)-x(j,k-1)))/hs;
for j=2:n-1
ax(j,k)=(a1((j+1/2)*h,k*h)*(x(j,k)-x(j+1,k))+a1((j-1/2)*h,k*h)*(x(j,k)-x(j-1,k))+...
   a2(j*h,(k+1/2)*h)*x(j,k) + a2(j*h,(k-1/2)*h)*(x(j,k)-x(j,k-1)))/hs;
end
j=n;
ax(j,k)=(a1((j+1/2)*h,k*h)*x(j,k)+a1((j-1/2)*h,k*h)*(x(j,k)-x(j-1,k))+...
   a2(j*h,(k+1/2)*h)*x(j,k) + a2(j*h,(k-1/2)*h)*(x(j,k)-x(j,k-1)))/hs;

end