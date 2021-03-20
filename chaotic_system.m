clear all;
%% variables
g= 0.32;
v = 0.3;

%% functions

f = @(t,x) [x(2); g*sin(x(3))-(v*x(2))-x(1)^3+x(1); 1];

%% initial conditions
x0 = [1; 0; 0];
[t,x] = ode23 (f, [0 300], x0);

%% slight variation in the initial conditions
z0 = x0 + rand(size(x0))*0.02;
[t1, z] = ode23 (f, [0 300], z0);

%% plotting 
figure 
plot ( t, x(:,1), "-k");
hold on;
plot (t1, z(:,1), "-r");


