function [J,theta]=grad(X,Y, power)
Alpha=0.01;
theta=zeros(5,1);
X=X.^power;
hypothesis=X*theta;
m=length(Y);
rep=500;
for i=1:rep
   hypothesis=X*theta;
   theta=theta-(Alpha/m)*X'*(hypothesis-Y);
   J(i)=(1/(2*m))*sum((hypothesis-Y).^2);
end

end


