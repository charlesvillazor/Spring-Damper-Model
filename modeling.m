%Charles Villazor
%August 31st, 2020
%MAE 361
%HW 2 - Methods of Numerical Modeling
clc;clear;close all
%% Initial Conditions
x(1) = pi/18; %initial Angle
x(2) = 0; %Initial Angular Velocity
deltaT = 0.01; %time step
N = 500; %amount of time steps

%% First Order Numerical Integration (Nonlinear Diff eq.)
for i = 1:N
    t = (i-1)*deltaT;
    xnew = step1('name_state_nonlinear',x,t,deltaT);
    xgraph(i) = x(1);
    time(i) = t;
    x = xnew;
end
figure(1)
hold on
grid on
title('Angle vs Time of a Disk Mass, Spring, Damper System')
xlabel('Time (s)')
ylabel('Angle (Rad)')
plot(time,xgraph, 'b')

%% Initial Conditions
x(1) = pi/18; %initial angle
x(2) = 0; %Initial Angular Velocity
deltaT = 0.01; %time step
N = 500; %amount of time steps

%% First Order Numerical Integration (Linear Diff eq.)
for i = 1:N
    t = (i-1)*deltaT;
    xnew = step1('name_state_linear',x,t,deltaT);
    xgraph(i) = x(1);
    time(i) = t;
    x = xnew;
end
plot(time,xgraph,'r')
%% Initial Conditions
x(1) = pi/18; %initial Angle
x(2) = 0; %Initial Angular Velocity
deltaT = 0.01; %time step
N = 500; %amount of time steps

%% Second Order Numerical Integration (Nonlinear Diff eq.)
for i = 1:N
    t = (i-1)*deltaT;
    xnew = step2('name_state_nonlinear',x,t,deltaT);
    xgraph(i) = x(1);
    time(i) = t;
    x = xnew;
end
plot(time,xgraph,'m')

%% Initial Conditions
x(1) = pi/18; %initial angle
x(2) = 0; %Initial Angular Velocity
deltaT = 0.01; %time step
N = 500; %amount of time steps

%% Second Order Numerical Integration (Linear Diff eq.)
for i = 1:N
    t = (i-1)*deltaT;
    xnew = step2('name_state_linear',x,t,deltaT);
    xgraph(i) = x(1);
    time(i) = t;
    x = xnew;
end
plot(time,xgraph,'k')
legend('First Order Numerical Integration (Nonlinear Diff eq.)','First Order Numerical Integration (Linear Diff eq.)','Second Order Numerical Integration (Nonlinear Diff eq.)','Second Order Numerical Integration (Linear Diff eq.)')