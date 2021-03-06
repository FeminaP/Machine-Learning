data=load('admissionData.txt');
X=data(:,[1,2]);
y=data(:,3);
m=length(y);
X=[ones(m,1) X];
initial_theta=zeros(3,1);
[cost grad]=costFunctionFL(initial_theta,X,y)
options = optimset('GradObj','on','MaxIter',400);
[theta,cost]=fminunc(@(t)(costFunctionFL(t,X,y)),initial_theta,options)
prob = sigmoid([1 45 85]* theta)
