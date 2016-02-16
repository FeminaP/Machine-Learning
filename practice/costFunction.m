function J = costFunction(X, y, theta0,theta1)
%   J = costFunction(X, y, theta1,theta2) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

m = length(y); % number of training examples

J = 0;

% Compute the cost of a particular choice of theta
s=0;
for i=1:m    
    s=s+(theta0+theta1*X(i,1)-y(i,1))^2;
end
J=s/(2*m);

% =========================================================================

end
