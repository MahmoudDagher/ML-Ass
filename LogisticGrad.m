function [J,theta]=LogisticGrad(X,Y, power)
Alpha=0.01;
theta=zeros(5,1);
X=X.^power;
% hypothesis=X*theta;
m=length(Y);
rep=500;
for i=1:rep
   %hypothesis=1/(1+exp(-1*(X)*theta));
   hypothesis=(1/(1+exp(-1*(X)*theta)))';
  theta=theta-(Alpha/m)*X'*(hypothesis-Y);
% theta=theta-(Alpha*(1/m)*(sum( (hypothesis-Y).*X))');
   J(i)=(1/(2*m))*sum((hypothesis-Y).^2);
end

end


