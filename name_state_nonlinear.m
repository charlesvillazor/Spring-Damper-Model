function [f] = name_state_nonlinear(x,t)
%M-file contains state equations and nonlinear motion equations
%Disc Spring Damper System (HW 1)

%Inputs
%x(t) nx1 vector of state variables at time t
%t time

%Outputs
%f(x,t) nx1 vector of time derivatives of state variables

%% Parameters
m = 2; %Mass
c = 5; %Damping Constant
k = 169; %spring constant

%% computation
f(1) = x(2);
f(2) = (((-2*k)/m)*((sqrt(3+(2*sin(x(1)))-(2*cos(x(1))))-1)/(sqrt(3+(2*sin(x(1)))-2*(cos(x(1))))))*(cos(x(1))+sin(x(1))))...
    -(((2*c)/m)*(((sin(x(1))-cos(x(1)))^2)/(3-(2*sin(x(1)))-(2*cos(x(1)))))*f(1));
end

