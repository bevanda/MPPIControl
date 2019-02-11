function dX = MassSpringDamper_Dynamics(x, x_dot, u, param)
m = param.m;
g = param.g;
k = param.k; 
c = param.c;

% States of the Pendulum dX(1) is
% Theta_dot and dX(2) is theta double dot
% u is the motor force 
dX(1) = x_dot;

dX(2) = (-k/m)*x+(-c/m)*x_dot+(1/m)*u;

dX = dX';

end

