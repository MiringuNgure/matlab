clear all;
%variables
x=1;

%computations
dex= exp(x); %the exact value
n = 10.^(1:12);
d1 = (1+x./n).^n;
error = (d1-dex)/dex;
nerror = error.*n;

data = [n;error;nerror];

fprintf('   n       delta        n*delta\n')

fprintf ('%10.1e %12.4e %11.4e\n', data);