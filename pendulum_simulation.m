clear all;
%% variables
disp0 = 0.5;
Avel = 0;
g = 9.81;
delta_t = 0.01;
l=1.0;
phi=0.1;
%% initial states0
y(1,:)=[disp0 0];

%%loop
for i = 1:1000
    y(i+1,:) = y(i,:)+ delta_t*[y(i,2), -(g*sin(y(i,1)))/l - phi*y(i,2)];
end
%%Plotting

time = linspace(1,1000,1001);

figure
plot (time,y(:,2),"r");
title("Time V angular velocity");
xlabel("Time");
ylabel ("Angular Veloxity");

figure
plot (time, y(:,1), "r");
title ("Time V angular displacement");
xlabel("Time");
ylabel ("Angular Displacement");

figure
plot (y(:,1),y(:,2), "r");
title("Velocity v displacement")