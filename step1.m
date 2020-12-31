function [xnew] = step1(file,x,t,deltaT)
%Performs 1st order numerical integration step (Euler Method)
%
%Inputs
%file - name of file that contains state equations
%x - n x 1 vector (1 column vector) of state variables at time t (initial variables?)
%t - time
%deltaT - time step (Change in time)
%
%Outputs
%xnew - n x 1 vector (1 column vector) of state variables at time t+deltaT
%
%Calls
%M-file
eval(['f=',file,'(x,t);']);
deltax = deltaT*f;
xnew = x+deltax;
end

