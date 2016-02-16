function [J, grad] = costFunctionFL(theta,X,y)
m = length(y);
grad=zeros(size(theta));

J = (-1/m)*sum( y .* log(sigmoid (X*theta)) + (1 - y) .* log(1 - sigmoid (X*theta)) );

grad(1) =(sum( ( (sigmoid (X*theta))- y ) .* X(:,1) ) )/m;

for i=2:length(theta) 
      
      grad(i) =(sum( ( (sigmoid (X*theta))- y ) .* X(:,i) ) )/m;

end

end
