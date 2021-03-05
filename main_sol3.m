%% Main Function for Recitation 4
% I will discuss Homework 3 Trigonometric interpolation.
% By: Chunyang Liao

%% Check trigcoef and trigeval are inverse
N = 20;
c = rand(2*N,1);
c_test = trigcoef(trigeval(c,N),N);
norm(c-c_test)

%% Check self-created DFT (trigeval) is same as ifft
N = 20;
c = rand(2*N,1);
d_trig = trigeval(c,N);
d = [c(N:2*N);c(1:N-1)];
d_mat = 2*N*ifft(d); 
norm(d_trig-d_mat)

%% Check self-created trigcoef is same as fft
c_trig = trigcoef(d_trig,N);
c_mat = fft(d_mat)/(2*N);
c_mat = [c_mat(N+2:2*N);c_mat(1:N+1)];
norm(c_trig-c_mat)

%% Problem 3
clear all;clc
k=3:10;
error1 = zeros(length(k),1);
error2 = zeros(length(k),1);
error3 = zeros(length(k),1);
error4 = zeros(length(k),1);
rate1 = zeros(length(k)-1,1);
rate2 = zeros(length(k)-1,1);
rate3 = zeros(length(k)-1,1);
rate4 = zeros(length(k)-1,1);
f1 = @(x) x.^2.*(2*pi-x).^2;
f2 = @(x) x.*(2*pi-x);
f3 = @(x) 1+x+x.^2;
f4 = @(x) exp(-(1./x+1./(2*pi-x)));
for i = 1:length(k)
   error1(i) = p3_main(k(i),f1);
   error2(i) = p3_main(k(i),f2);
   error3(i) = p3_main(k(i),f3);
   error4(i) = p3_main(k(i),f4);
end

for i=1:7
   rate1(i) = log(error1(i)/error1(i+1))/log(2); 
   rate2(i) = log(error2(i)/error2(i+1))/log(2);
   rate3(i) = log(error3(i)/error3(i+1))/log(2);
   rate4(i) = log(error4(i)/error4(i+1))/log(2);
end
