clear all;
clc;
% delete(gcp('nocreate'));
%for speedup
% parpool('local', 4);

K = 1000;
N = 100;
iterations = 500;
param.dt = 0.02;

% System Paramters Given in the Project setting
param.mp = 1;
param.l = 1;
param.g = 9.81;
param.mu = 0.2;

% Variance and Lamda
param.lambda = 10;
param.variance = 10;
param.R = 1;

% param.lambda = 1/(param.variance*K);

% Initial State
x_init = [0 0];

% Final state for Cart Pole
x_fin = [-pi 0];

% Variables To store the system state
X_sys = zeros(2,iterations+1);
U_sys = zeros(1,iterations);
cost  = zeros(1,iterations);
cost_avg = zeros(1,iterations);

X_sys(:,1) = x_init;

% Initialization of Variables
x = zeros(2,N);
delta_u = zeros(N,K);
u_init = 1;

X_sys(:,1) = x_init;

% Initialization of input for N time horizone
u = zeros(1,N);

% MPPI Loop
for j = 1: iterations
    
    % Initialization of Cost for K Samples
    Stk = zeros(1,K);
    
       % Calculating cost for K samples and horizon N
    for k = 1:K
        x(:,1) = x_init;
        for i = 1:N-1
            delta_u(i,k) = param.variance*(randn(1));
            x(:,i+1) = x(:,i) + InvertedPendulum_Dynamics(x(1,i), x(2,i),...
                 (u(i)+delta_u(i,k)), param)*param.dt;
                Stk(k) = Stk(k) + inv_pend_cost_function(x(1,i+1), x(2,i+1), ...
                    (u(i)+ delta_u(i,k)),param);
        
                
        end
        delta_u(N,k) = param.variance*(randn(1));

    end
 
    
    % Average cost over iterations
    cost_avg(j) = sum(Stk)/K;
    
    % Updating lambda as function of R which Lambad = 1/R here R = Cost
    % function
%     param.lambda = 1000*cost(j) + 1;

    % Updating the control input according to the expectency over K sample
    % trajectories
    for i = 1:N
        u(i) = u(i) + totalEntropy(Stk(:) , delta_u(i,:),param);
    end
    
    % Input to the system 
    U_sys(j) = u(1);
    
    % System Updatation because of input
    X_sys(:,j+1) = X_sys(:,j) + InvertedPendulum_Dynamics(X_sys(1, j), X_sys(2,j),...
         u(1), param)*param.dt;
    
    % Calculating state cost function
    cost(j+1) = inv_pend_cost_function(X_sys(1,j+1), X_sys(2,j+1),...
        (u(i)+delta_u(i,k)),param);
    
    % Input updatation for next time step
    for i = 1:N-1
        u(i) = u(i+1);
    end
    
    % Updating the input in Last time step
    u(N) = u_init;
    
    % initial state for calculating the expectency over trajectory in next
    % step
    x_init = X_sys(:,j+1);  
    
end

%% plot the cart pole state X and theta
figure
plot(X_sys(1,:))
hold on
plot(X_sys(2,:))
title('Theta and ThetaDot');
ylabel('Theta ThetaDot');
xlabel('iterations');
legend('Theta', 'ThetaDot');

%%
% Animation of Inverted Pendulum
figure;
animatePendulum;