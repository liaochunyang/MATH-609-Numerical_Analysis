%% Problem 2 main function
% I compare the result of our self-written cholesky function with Matlab
% built-in cholesky function by using Hilbert matrix. The results are same!
% Remark: In Matlab built-in chol function, if no parater 'lower', it
% returns an upper triangle matrix. 

A = hilbert_matrix(3);
L = cholesky(A);
L_chol = chol(A,'lower');
