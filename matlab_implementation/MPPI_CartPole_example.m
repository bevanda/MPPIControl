close all;
clearvars;

K = 1000;
N = 100;

%10s trajectory execution
iterations = 500;
% iterations=150;
dt = 0.02;
% System Paramters Given in the Project setting
mc = 1;
mp = 0.2;
l = 0.5;
g = 9.81;
kd = 0.2;
mu = 0;

% Variance and Lamda
lambda = 10;
variance = 10;
R = 1/lambda;

param.l=l;
param.dt=dt;
% Initial State
x_init = [0 0 0 0];

% Final state for Cart Pole
x_fin = [0 0 -pi 0];

% Variables To store the system state
X_sys = zeros(4,iterations+1);
U_sys = zeros(1,iterations);
cost  = zeros(1,iterations);
cost_avg = zeros(1,iterations);

X_sys(:,1) = x_init;


delta_u = zeros(N,K);
x = zeros(4,N);

u_init = 1;
X_sys(:,1) = x_init;

% Initialization of input for N time horizone
u = zeros(1,N);

% MPPI Loop
r=robotics.Rate(1/dt); % set loop rate

tic;
reset(r);
for j = 1: iterations
    time = r.TotalElapsedTime;
    % Calculating cost for K samples and N finite horizone
    Stk = zeros(K,1);
    x(:,1) = x_init;

    [Stk,delta_u,x]=Sample_MPPI_CartPole_mex(...
                                K,N,variance,Stk,...
                                x,delta_u,u,...
                                R, mc, mp, l, g, kd, dt...
                                );
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
        X_sys(4,j+1),(u(1)), dt, R);

    % Input updating for the next time step
    for i2 = 1:N-1
        u(i2) = u(i2+1);
    end
    % Updating the input in Last time step
    u(N) = u_init;

    % initial state for calculating the expectation over trajectories in next
    % step
    x_init = X_sys(:,j+1); 

    fprintf('Iteration: %d - Time Elapsed: %f\n',j,time)
	waitfor(r);
end % end for

toc;

%% plot the cart pole state X and theta
figure;
plot(dt*(0:iterations),X_sys(1,:));
hold on;
plot(dt*(0:iterations),X_sys(3,:));
title('X and Theta');
ylabel('X and Theta');
xlabel('time [s]');
legend('X', 'Theta');
figure;
plot(U_sys);
title('X force');

% a=0.99;
% yk=zeros(1,iterations);
% 
% for i=2:iterations
%     yk(i) = a*U_sys(i)+(1-a)*yk(i-1);
% end

% order = 3;
% framelen = 11;
% 
% yk = sgolayfilt(U_sys,order,framelen);
% %                                                                                                                                        
% X=zeros(4,1);
% X(:,1)=x_init;
% for j=1:iterations
%     X(:,j+1) = X(:,j) + CartPole_Dynamics(...
%         X(1, j), X(2,j),...
%             X(3,j), X(4,j),...
%             yk(j),  mc, mp, l, g, kd)*dt;
% end
% figure;
% plot(dt*(0:iterations),X(1,:));
% hold on;
% plot(dt*(0:iterations),X(3,:));
% title('X and Theta');
% ylabel('X and Theta');
% xlabel('time [s]');
% legend('X', 'Theta');
% figure;
% plot(yk);
% title('X force smoothened');
%% Plot the average cost over iterations
figure;
plot(cost_avg-min(cost_avg));
title('Cost');
%%
% Animation of Cart Pole
% figure;
% animatePendulumCart;