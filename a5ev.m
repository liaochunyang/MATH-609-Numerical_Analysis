function [ax]=a5ev(x,n)

  hs=1/(n+1)^2;
ax=zeros(n,n);

  %   the general case

  k=1;
j=1;
  ax(j,k)=(4*x(j,k)-x(j+1,k)-x(j,k+1))/hs;
for j=2:n-1
  ax(j,k)=(4*x(j,k)-x(j+1,k)-x(j-1,k)-x(j,k+1))/hs;
end
j=n;
ax(j,k)=(4*x(j,k)-x(j-1,k)-x(j,k+1))/hs;
	

for k=2:n-1
	j=1;	
  ax(j,k)=(4*x(j,k)-x(j+1,k)-x(j,k+1)-x(j,k-1))/hs;
  for j=2:n-1
%    the general case
	  ax(j,k)=(4*x(j,k)-x(j+1,k)-x(j-1,k)-x(j,k+1)-x(j,k-1))/hs;
end
j=n;
  ax(j,k)=(4*x(j,k)-x(j-1,k)-x(j,k+1)-x(j,k-1))/hs;
end

k=n;
j=1;
ax(j,k)=(4*x(j,k)-x(j+1,k)-x(j,k-1))/hs;
  for j=2:n-1
    ax(j,k)=(4*x(j,k)-x(j+1,k)-x(j-1,k)-x(j,k-1))/hs;
end
j=n;
ax(j,k)=(4*x(j,k)-x(j-1,k)-x(j,k-1))/hs;

end
