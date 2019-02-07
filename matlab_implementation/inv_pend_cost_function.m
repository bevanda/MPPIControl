function [S] = inv_pend_cost_function(theta, theta_dot, u, param)
    dt = param.dt;
    
    S = (12*(1+cos(theta))^2 + 0.1*u^2 + 2*theta_dot^2)*dt;
    


end
