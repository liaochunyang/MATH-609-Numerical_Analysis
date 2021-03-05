%   2*sinfft(sinfft(x,n),n)/(n+1) =I

   function [st]=sinfft(x,N)

y(1)=0.0;
y(N+2)=0.0;

np2=2*N+3;

for j=1:N
	y(j+1)=x(j);
y(np2-j)=-x(j);
end

y=fft(y);

for j=1:N
	st(j)=-.5*imag(y(j+1));
end

end




