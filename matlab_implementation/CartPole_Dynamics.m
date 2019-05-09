function dX = CartPole_Dynamics(x, x_dot, theta, theta_dot, u, mc, mp, l, g, kd)

% States of the Pendulum dX(1) is X_dot dX(2) is X double dor, dX(3) is
% Theta_dot and dX(4) is theta double dot
% u is the force horizontally applied
% down position theta=0, up position theta=PI
dX=zeros(4,1);

dX(1) = x_dot;

dX(2) = (u - kd*x_dot + mp*sin(theta)*(l*theta_dot^2 + g*cos(theta)))/(mc+mp*sin(theta)^2);

dX(3) = theta_dot;

dX(4) = (-(u - kd*x_dot)*cos(theta) - mp*l*theta_dot^2*cos(theta)*sin(theta)-(mc+mp)*g*sin(theta))...
    /(l*(mc+mp*sin(theta)^2));


end

