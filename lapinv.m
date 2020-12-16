function [bx]=lapinv(x,n)

  y=  sinfft2(x,n);
hs=1/(n+1)^2;
for j=1:n
	sym(j)=(2-2*cos(j*pi/(n+1)))/hs;
end


for l=1:n
	for m=1:n
		y(l,m)=y(l,m)/(sym(l)+sym(m));
end
end
bx=sinfft2(y,n)*4/(n+1)^2;

end

