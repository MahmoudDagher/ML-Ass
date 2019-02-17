function [J,theta]=LogisticGrad(X,Y, power)
Alpha=0.001;
theta=zeros(5,1);
X=X.^power;
% hypothesis=X*theta;
m=length(Y);
  hypothesis=(1/(1+exp(-1*(X)*theta)))';
   %hypothesis=1/(1+exp(-1*(X)*theta));

rep=4000;
for i=1:rep
  % hypothesis=1/(1+exp(-1*(X)*theta));
  hypothesis=(1/(1+exp(-1*(X)*theta)))';
  
  theta=theta-(Alpha/m)*X'*(hypothesis-Y);
%theta=theta-(Alpha*(1/m)*(sum( (hypothesis-Y).*X))');
%theta=theta-(Alpha*(1/m)* (hypothesis-Y)'*(X))
   J(i)=(1/(2*m))*sum((hypothesis-Y).^2);
end

end


