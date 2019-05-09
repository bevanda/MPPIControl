close all;
clearvars;

K = 1000;
N = 100;

%10s trajectory execution
% iterations = 250;
iterations=150;
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
x_init = [0 0 pi*(9/18) 0];

% Final state for Cart Pole
x_fin = [0 0 pi 0];

% Variables To store the system state
X_sys = zeros(4,iterations+1);
U_sys = zeros(1,iterations);
cost  = zeros(1,iterations);
cost_avg = zeros(1,iterations);

X_sys(:,1) = x_init;



% put data onto GPU
delta_u = zeros(N,K);
x = zeros(4,N);

u_init = 1;
X_sys(:,1) = x_init;

% Initialization of input for N time horizone
u = zeros(1,N);
tic;
% MPPI Loop
[X_sys,U_sys,cost_avg]=MPPI_CartPole(...
                            iterations,N,K,lambda,variance,...
                            x_init,x,u_init,X_sys,U_sys,delta_u,u,...
                            cost, cost_avg,R,...
                            mc, mp, l, g, kd, dt...
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

a=0.99;
yk=zeros(1,iterations);

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

%%
% Animation of Cart Pole
% figure;
% animatePendulumCart;