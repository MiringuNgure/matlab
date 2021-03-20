clear all;
%% variables
x=1;
h=10.^(-(1:16));
%% computations of derivatives
exact = cos(x);
assy = (sin(x+h)-sin(x))./h;
sy = (sin(x+h) -sin(x-h))./(h+h);

%% computation of errors

assy_error = (assy-exact)/exact;
sy_error = (sy-exact)/exact;

%% output
tab = [h;assy_error;sy_error];
fprintf('h         assymetric error symetric error\n')
fprintf('%5.1e %13.4e %16.4e\n', tab)
