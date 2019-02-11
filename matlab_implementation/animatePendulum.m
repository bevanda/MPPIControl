%Unpack the data
angle = X_sys(1,:);

%Position of the cart over time:
Cart = [zeros(size(angle));zeros(size(angle))];

%Position of the pendulum bob over time:  (Assume that length==1)
Bob = Cart + param.l*[sin(angle); -cos(angle)];

%Pack up for plotting:
t = zeros(1,iterations+1);
x = [Cart;Bob];
for i = 1:iterations
    t(i+1) = param.dt*i;
end


%Figure out the extents of the axis
horizontalAll = [Cart(1,:), Bob(1,:)];
verticalAll = [Cart(2,:), Bob(2,:)];
param.axis = [min(horizontalAll),max(horizontalAll),...
  min(verticalAll),max(verticalAll)];
param.clearFigure = true;

%Pass the trace of the Bob's path to the plotting function.
param.Bob = Bob;

%Set up parameters for animation:
P.plotFunc = @(t,x)plotPendulumCart(t,x,param);
P.speed = 0.25;
P.figNum = gcf;

%Call the animation function
Animate(t,x,P)