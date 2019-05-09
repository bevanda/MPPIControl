function [yk1] = smoothe(yk,xk1,a)
%SMOOTHE Summary of this function goes here
%   Detailed explanation goes here
yk1 = (1-a)*yk+a*xk1;
end

