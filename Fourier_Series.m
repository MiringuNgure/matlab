%% Definition of the function
L = pi;
N= 1024;
dx = 2*L/(N-1);
x = -L:dx:L;
f=0*x;
f(N/4:N/2)=4*(1:N/4+1)/N;
f(N/2+1:3*N/4) = 1-4*(0:N/4-1)/N;

%% plotting the function to approximate
figure;
plot(x,f,"r");
xlabel("space");
ylabel("frequency");
title("The actual Fucntion");
%% Estimation of the function
A0= sum(f.*ones(size(x)))*dx/pi;
FFS = A0/2;
figure;
for k= 1:100
    A(k)= sum(f.*cos(pi*k*x/L))*dx/pi;
    B(k)= sum(f.*sin(pi*k*x/L))*dx/pi;
    FFS=FFS+A(k)*cos(k*pi*x/L)+B(k)*sin(k*pi*x/L);
    plot(x,FFS,"b");
    pause(.1);
end


