clear all;
%% variables 
x=1;
fac = factorial([1:20]);
[N,M] = size (fac);
%% Computations
exact = exp(x);
appr(1) = 1;
error(1) = (appr(1)-exact)/exact;
for i= 2:M
    appr(i) = appr(i-1)+ ((x^(i-1))/fac(i-1));
    error(i) = (appr(i)-exact)/exact;
    fprintf('%4.1e %10.4e %12.4e\n', i, appr(i),error(i));
end


 