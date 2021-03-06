clear all;
%% variables
x0 = input ("Enter the x position: ");
y0 = input ("Enter the y position: ");
delta_t = input ("Enter the Step sizes: ");
theta = input ("Enter the projectile angle: ")*180/pi;
v0 = input ("Enter the initial velocity:");
maxsteps=1000000;
g = 9.81;
%% Initial state
y(1,:) = [0 0 v0*cos(theta) v0*sin(theta)];

%% The loop
for i = 1:maxsteps
    y(i+1,:) = y(i,:) + delta_t*[y(i,3), y(i,4), 0, -g];
    if (y(i+1,2)<0)
        break;
    end
end
%% plot 
figure
plot (y(:,1), y(:,2),"r");
xlabel ("horizontal motion and position");
ylabel ("vertical motion and position");
title ("Trajectile");

