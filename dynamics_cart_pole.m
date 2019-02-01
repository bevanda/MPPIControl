%% dynamics_cp.m
% *Summary:* Implements ths ODE for simulating the cart-pole dynamics.
%
%    function dz = dynamics_cp(t, z, f)
%
%
% *Input arguments:*
%
%   z     state                                                    [4 x 1]
%   f     current force f
%
% *Output arguments:*
%
%   dz    state derivative wrt time
%
%
% Note: It is assumed that the state variables are of the following order:
%       x:        [m]     position of cart
%       dx:       [m/s]   velocity of cart
%       theta:    [rad]   angle
%       dtheta:   [rad/s] angular velocity
%
%
% A detailed derivation of the dynamics can be found in:
%
% M.P. Deisenroth:
% Efficient Reinforcement Learning Using Gaussian Processes, Appendix C,
% KIT Scientific Publishing, 2010.
%
% Copyright (C) 2008-2013 by
% Marc Deisenroth, Andrew McHutchon, Joe Hall, and Carl Edward Rasmussen.
%
% Modified by Matteo Saveriano: 2018-10-17

function dz = dynamics_cart_pole(z,f)
% Parameters
l = 0.5;  % [m]      length of pendulum
m = 0.2;  % [kg]     mass of pendulum
M = 1;  % [kg]     mass of cart
b = 0.0;  % [N/m/s]  coefficient of friction between cart and ground
g = 9.82; % [m/s^2]  acceleration of gravity

dz = zeros(4,1);

% Cart state [x, xd]
dz(1) = z(2);
dz(2) = ( 2*m*l*z(4)^2*sin(z(3)) + 3*m*g*sin(z(3))*cos(z(3)) ...
      + 4*f - 4*b*z(2) )/( 4*(M+m)-3*m*cos(z(3))^2 );
  
% Pole state [theta, dtheta]
dz(3) = z(4);
dz(4) = (-3*m*l*z(4)^2*sin(z(3))*cos(z(3)) - 6*(M+m)*g*sin(z(3)) ...
      - 6*(f-b*z(2))*cos(z(3)) )/( 4*l*(m+M)-3*m*l*cos(z(3))^2 );

% Total Mechanical Energy
%  E = (M+m)*z(2)^2/2 + 1/6*m*l^2*z(3)^2 + m*l*(z(2)*z(3)-g)*cos(z(4))/2;
