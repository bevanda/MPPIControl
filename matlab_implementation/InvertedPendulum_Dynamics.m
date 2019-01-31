function dX = InvertedPendulum_Dynamics(theta, theta_dot, u, param)
mp = param.mp;
l = param.l;
g = param.g;
mu = param.mu; %friction coefficient

% States of the Pendulum dX(1) is
% Theta_dot and dX(2) is theta double dot
% u is the motor force 
dX(1) = theta_dot;

dX(2) = (mp*g*l*sin(theta)-mu*theta_dot+u)/((mp*l)^2);

dX = dX';

end

