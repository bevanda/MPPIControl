function [X_sys,U_sys,cost_avg]=MPPI_MGCM(...
                            iterations,N,K,lambda,variance,...
                            x_init,x,u_init,X_sys,U_sys,delta_u,u,...
                            cost, cost_avg,x_s,Q, R, dt,...
                            u_min,u_max...
                            )
for j = 1: iterations
        % Calculating cost for K samples and N finite horizone
        Stk = zeros(K,1);
        x(:,1) = x_init;
%         coder.gpu.kernel();
        for k = 1:K
            [Stk,delta_u,x]=...
                sample_MPPI_MGCM(...
                            k,N,variance,Stk,...
                            x,delta_u,u,...
                            x_s,Q,R,dt...
                            );
             delta_u(N,k) = variance*(randn(1));
        end                      
               
        % get back data from GPU

        % Average cost over iterations
        cost_avg(j) = sum(Stk)/K;

        % Updating the control input according to the expectation over K sample
        % trajectories
%         coder.gpu.kernel();
        for i1 = 1:N
            u(i1) = u(i1) + totalEntropy(Stk, delta_u(i1,:), lambda);
        end

        % Input to the system 
        u_sys=clamp_u(u(1), u_min, u_max);
        U_sys(j) = u_sys;

        % State update because of input
        X_sys(:,j+1) = X_sys(:,j) + MGCM_Dynamics(X_sys(:,j),u_sys,dt);

        % Calculating state cost function
        cost(j+1) = cost_function_mgcm(X_sys(:,j), u_sys,x_s, Q, R,dt);

        % Input updating for the next time step
%         coder.gpu.kernel();
        for i2 = 1:N-1
            u(i2) = u(i2+1);
        end
        % Updating the input in Last time step
        u(N) = u_init;

        % initial state for calculating the expectation over trajectories in next
        % step
        x_init = X_sys(:,j+1); 


end % end for

end % end function