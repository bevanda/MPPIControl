function [X_sys,U_sys,cost_avg]=MPPI_CartPole(...
                            iterations,N,K,lambda,variance,...
                            x_init,x,u_init,X_sys,U_sys,delta_u,u,...
                            cost, cost_avg,R,...
                            mc, mp, l, g, kd, dt...
                            )
for j = 1: iterations
        % Calculating cost for K samples and N finite horizone
        Stk = zeros(K,1);
        x(:,1) = x_init;
        for k = 1:K
            [Stk,delta_u,x]=...
                sample_MPPI_CartPole(...
                                    k,N,variance,Stk,...
                                    x,delta_u,u,...
                                    R, mc, mp, l, g, kd, dt...
                                    );
            delta_u(N,k) = variance*(randn(1));
        end
        % get back data from GPU

        % Average cost over iterations
        cost_avg(j) = sum(Stk)/K;

        % Updating the control input according to the expectation over K sample
        % trajectories

        for i1 = 1:N
            u(i1) = u(i1) + totalEntropy(Stk, delta_u(i1,:), lambda);
        end

        % Input to the system 
        U_sys(j) = u(1);

        % State update because of input
        X_sys(:,j+1) = X_sys(:,j) + CartPole_Dynamics(X_sys(1, j), X_sys(2,j),...
            X_sys(3,j), X_sys(4,j), u(1),  mc, mp, l, g, kd)*dt;

        % Calculating state cost function
        cost(j+1) = cost_function_cartpole(X_sys(1,j+1), X_sys(2,j+1), X_sys(3,j+1),...
            X_sys(4,j+1),(u(1)+delta_u(1,k)), dt, R);

        % Input updating for the next time step
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