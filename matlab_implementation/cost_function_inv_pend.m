function [S] = cost_function_inv_pend(theta, theta_dot, u, param)
    dt = param.dt;
    R = param.R;
    S = (10*(1+cos(theta))^2 + R*u^2 + 5*theta_dot^2)*dt;
    
end
