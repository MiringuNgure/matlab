Y = double(imread("test_image.tif","tif"));
[N1, N2] = size(Y);
Yhat = zeros(size(Y));
n1 = 1:N1;
for n2 = 1:N2
    for k1 = 1:N1
        if k2==1
            w1=1;
        else
            w1=2;
        end
        Yhat(k1,n2)= sqrt(w1/N1)*cos((pi*(2*n1-1)*(k1-1))/(2*N1))*Y(n1,n2);
    end
end
