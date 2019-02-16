function [theta]=normaleq(x,y)
%%x=[ones(length(x),1),x];
theta=inv(x'*x)*x'*y;
end