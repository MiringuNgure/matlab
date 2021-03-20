function[x] = Naive_gaussian(A,b)
%% The matrix
C= horzcat(A,b);
x = zeros(size(b));
[N1,N2]=size(A);

%% Forward Elimination
for i = 2:N1
    for j =i:N1
        C(j,:)=(C(j,i-1)/C(i-1,i-1))*C(i-1,:) - C(j,:);
    end
end
[M1,M2] = size(C);
A = C(1:M1,1:M1);
b= C(:,M2);
%% Back substitution
x = A\b;
disp(x);


