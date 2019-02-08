function [S] = mass_spring_damper_cost_function(x, x_dot, u, param)
    dt = param.dt;
    
    S = (12*(x-1.5)^2 + 10*x_dot^2 + 0.3*u^2)*dt;
    

end
