function [S] = cost_function_mgcm(x, u, x_s,Q,R,dt)
    % p is position of Cart Pole Theta is angle theta_dot is change in
    % angle and p_dot is change in position
    S_c=0;
    mflow_min=0; mflow_max=1;
    prise_min=1.1875; prise_max=2.1875;
    throttle_min=0.1547; throttle_max=2.1547;
    throttle_rate_min=-20; throttle_rate_max=20;
    u_min=0.1547;u_max=2.1547;

    if x(1)>mflow_max || x(1)<mflow_min
        S_c=S_c+10000;
    end
    if x(2)>prise_max || x(2)<prise_min
        S_c=S_c+10000;
    end
    if x(3)>throttle_max || x(3)<throttle_min
        S_c=S_c+1000;
    end
    if x(4)>throttle_rate_max || x(4)<throttle_rate_min
        S_c=S_c+10000;
    end
    if u>u_max || u<u_min
        S_c=S_c+10000;
    end
    
    S = (((x-x_s))'*Q*((x-x_s)) + (u-x_s(3))'*R*(u-x_s(3))+S_c);
end
