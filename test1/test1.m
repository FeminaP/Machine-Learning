% converting wine.csv to wine.mat
Wine=csvread('wine.csv');
save('wine.mat','Wine')
% Taking the first 1280 data rows and calling them the training set
trainingset=Wine(2:1281,:);
% Taking the remaining rows and calling them the test set
testset=Wine(1282:1600,:);
% Model M1 using training set
x=trainingset(:,[1 7]);
y=trainingset(:,9);
[J_h,t_h]=testGradientDescend(x,y,1.0,0.5,0.5,0.01,2000);
% Graph of the cost function as the iterations proceed for Model M1
plot(J_h,'rx');
xlabel('Iterations #');
ylabel('Cost Function, J');
% Model M2 using training set
x1=trainingset(:,[3 6]);
y1=trainingset(:,9);
[J_h,t_h]=testGradientDescend(x1,y1,1.0,0.5,0.5,0.01,2000);
% Graph of the cost function as the iterations proceed for Model M2
plot(J_h,'rx');
xlabel('Iterations #');
ylabel('Cost Function, J');
%  Evaluating cost function using theta values of M1 to predict the quality of wine in the test data set
x3=testset(:,[1 7]);
y3=testset(:,9);
costFunForMultivariable(x3, y3, 2.96316,0.19935,1.40583)
%  Evaluating cost function using theta values of M2 to predict the quality of wine in the test data set
x4=testset(:,[3 6]);
y4=testset(:,9);
costFunForMultivariable(x4, y4, 1.450857,0.038766,1.243855)
