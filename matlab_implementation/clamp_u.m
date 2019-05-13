function [u_out] = clamp_u(u_in, u_min, u_max)
%CLAMP_U Summary of this function goes here
%   Detailed explanation goes here
u_out=max(min(u_in,u_max),u_min);

end

