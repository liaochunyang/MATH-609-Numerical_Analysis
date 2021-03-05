%% Problem 2 part(a) Solution
% Created by Chunyang Liao
function x = lower_triangle_solver(L,y)

k = size(L,1);
x = zeros(k,1);
x(1) = y(1)/L(1,1);

for i=2:k
    sum = 0;
    for j=1:i-1
        sum = sum + L(i,j) * x(j);
    end
    x(i) = (y(i) - sum)/L(i,i);
end

end