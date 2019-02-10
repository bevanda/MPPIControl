function [S] = inv_pend_cost_function(theta, theta_dot, u, param)
    dt = param.dt;
    R = 0;
    S = (20*(1+cos(theta))^2 + R*u^2 + 0.5*theta_dot^2)*dt;
    


end
