function [f] = name_state_linear(x,t)
%M-file contains state equations and linear motion equations
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
f(2) = (-5*x(2))-(169*(x(1)));
end

