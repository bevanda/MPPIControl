%% animate_cart_pole.m
% *Summary:* Draw the cart-pole system with reward, applied force, and 
% predictive uncertainty of the tip of the pendulum
%
%    function animate_cart_pole(x, theta, force)
%
% *Input arguments:*
%
%		x      Tx1 vector: position trajectory of the cart
%   theta      Tx1 vector: angle trajectory of pendulum
%   force      Tx1 vector: forces applied to cart
%
% Author: Matteo Saveriano

function animate_cart_pole(x, theta, force)
    for t = 1:size(x,1)
        draw_cart_pole(x(t,1), theta(t,1), force(t,1))
        pause(0.1);
    end

   
% *Summary:* Draw the cart-pole system with reward, applied force, and 
% predictive uncertainty of the tip of the pendulum
%
%    function draw_cart_pole(x, theta, force)
%
%
% *Input arguments:*
%
%		x          position of the cart
%   theta      angle of pendulum
%   force      force applied to cart
%
%
% Copyright (C) 2008-2013 by
% Marc Deisenroth, Andrew McHutchon, Joe Hall, and Carl Edward Rasmussen.
%
% Modified by Matteo Saveriano: 2018-10-17

function draw_cart_pole(x, theta, force)
% Parameters
l = 0.6;
xmin = -3; 
xmax = 3;    
height = 0.1;
width  = 0.3;
maxU = 10;

% Compute positions 
cart = [ x + width,  height
         x + width, -height
         x - width, -height
         x - width,  height
         x + width,  height ];
pendulum = [x, 0; x+2*l*sin(theta), -cos(theta)*2*l];


clf; hold on
plot(0,2*l,'k+','MarkerSize',20,'linewidth',2)
plot([xmin, xmax], [-height-0.03, -height-0.03],'k','linewidth',2)

% Plot force
plot([0 force/maxU*xmax],[-0.3, -0.3],'g','linewidth',10)

% Plot the cart-pole
fill(cart(:,1), cart(:,2),'k','edgecolor','k');
plot(pendulum(:,1), pendulum(:,2),'r','linewidth',4)

% Plot the joint and the tip
plot(x,0,'y.','markersize',24)
plot(pendulum(2,1),pendulum(2,2),'y.','markersize',24)

% Text
text(0,-0.3,'applied force')
set(gca,'DataAspectRatio',[1 1 1],'XLim',[xmin xmax],'YLim',[-1.4 1.4]);
axis off;
drawnow;
