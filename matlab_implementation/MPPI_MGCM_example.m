close all;
clearvars;

K = 1000;
N = 50;

% Constraints
u_min=0.1547;
u_max=2.1547;
%10s trajectory execution
% iterations = 250;
iterations=150;
dt = 0.01;


% Variance and Lamda
lambda = 1;
variance = 10;
R = 1/lambda;
Q=eye(4);


% Variables To store the system state
X_sys = zeros(4,iterations+1);
U_sys = zeros(1,iterations);
cost  = zeros(1,iterations);
cost_avg = zeros(1,iterations);


% Initial State
x_init = [0.15 1.2875 1.1547 0]';
x_s=[0.5 1.6875 1.1547 0]';
X_sys(:,1) = x_init;



% put data onto GPU
delta_u = zeros(N,K);
x = zeros(4,N);

u_init = 1*x_s(3);


% Initialization of input for N time horizone
u = zeros(1,N);

tic;
% MPPI Loop
[X_sys,U_sys,cost_avg]=MPPI_MGCM(...
                            iterations,N,K,lambda,variance,...
                            x_init,x,u_init,X_sys,U_sys,delta_u,u,...
                            cost, cost_avg,x_s, Q,R, dt,...
                            u_min,u_max...
                            );
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

% for i=2:iterations
%     yk(i) = a*U_sys(i)+(1-a)*yk(i-1);
% end
%                                                                                                                                         
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