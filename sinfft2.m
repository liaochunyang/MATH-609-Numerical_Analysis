%   Now x is N x N
function [y]=sinfft2(x,N)

  y=zeros(N,N);

% transform the rows
  for j=1:N
	  y(j,:)=(sinfft(x(j,:),N));
  end

%  transform the columns
  for j=1:N
	  y(:,j)=sinfft(y(:,j),N);
end

end
