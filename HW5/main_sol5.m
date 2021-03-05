%% Main function of Homework/Programming 5 Problem 3

clear all;clc;
iter_tau_1 = zeros(6,1);
iter_opt_1 = zeros(6,1);

iter_tau_2 = zeros(6,1);
iter_opt_2 = zeros(6,1);


epsilon1 = 10^(-2);
epsilon2 = 10^(-4);
for i=1:6
N = 2^(i+1);    
[j_tau,x_tau,j_opt,x_opt,K] = iter_richardson(N,epsilon1);
iter_tau_1(i) = j_tau;
iter_opt_1(i) = j_opt;
[j_tau,x_tau,j_opt,x_opt,K] = iter_richardson(N,epsilon2);
iter_tau_2(i) = j_tau;
iter_opt_2(i) = j_opt;
end
