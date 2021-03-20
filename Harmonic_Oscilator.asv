clear all;
%% variables
k = 0.3;
%% function
f = @(t,x) [x(2);-k*x(1)];
%% initial condition
x0=[1 0];
[t,x] = ode23(f, [0,300],x0);
z0 = x0 + rand(size(x0))*0.02;
[t1,z] = ode23(f,[0,300],z0);
%% Plotting
figure
plot(t,x(:,1), "r");
hold on;
plot(t1,z(:,1), "b");