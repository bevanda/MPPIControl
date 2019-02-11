function [S] = cost_function_cartpole(p, p_dot, theta, theta_dot, u, param)
    dt = param.dt;
    R = param.R;
    % p is position of Cart Pole Theta is angle theta_dot is change in
    % angle and p_dot is change in position
    S = (6*p^2 + 12*(1+cos(theta))^2 + R*u^2 + 0.1*theta_dot^2 + 0.1*p_dot^2)*dt;
end
