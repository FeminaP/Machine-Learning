% Question 1
data=load('trainData.txt' );
test=load('testData.txt' );
test_x = test(:,1);
test_y = test(:,2);
x=data(:,1);
y= data(:,2);
x_vals = (0:0.025:1)';
a_LinRegRegularized(x, y, x_vals,5,0)
%Question 2
%
figure;
plot(x,y,'ro', 'markersize',5, 'markerfacecolor','red');
hold on;
plot(test(:,1), test(:,2), 'bo','markersize',5, 'markerfacecolor','blue');
plot(x_vals,a_LinRegRegularized(x,y,x_vals,7,0),'b','linestyle','--','linewidth',2);
plot(x_vals,a_LinRegRegularized(x,y,x_vals,7,1),'g','linestyle','--','linewidth',2);
plot(x_vals,a_LinRegRegularized(x,y,x_vals,7,10),'r','linestyle','--','linewidth',2);
plot(x_vals,a_LinRegRegularized(x,y,x_vals,7,100),'y','linestyle','--','linewidth',2);
legend('training data','test data', '7th degree fit, lambda=0','7th degree fit, lambda=1','7th degree fit, lambda=10','7th degree fit, lambda=100','location','southwest');
%Question 3
% Calculate Training and Test Error
x_vals_train = [0,0.05,0.1,0.15,0.25,0.3,0.35,0.4,0.5,0.55,0.6,0.75,0.9,0.95]';
x_vals_test = [0.2,0.45,0.65,0.7,0.8,0.85]';
polynomial = [7,10,12,14,16];
lambda = [0,1,10,100];
for i = 1:length(polynomial)
  printf("Training and Test error for %d th degree polynomial \n\n",polynomial(i));
  for j = 1:length(lambda)
    printf("lambda = %d ",lambda(j));
    [v] = a_LinRegRegularized(x, y, x_vals_train,polynomial(i),lambda(j));
    train_error = 0;
    for k = 1:length(x_vals_train)
      train_error = train_error + (y(k) - v(k))^2;
    end
    printf("---> Training Error = %f",train_error);

    [z] = a_LinRegRegularized(x,y, x_vals_test,polynomial(i),lambda(j));
    test_error = 0;
    for l = 1:length(x_vals_test)
      test_error = test_error + (test_y(l) - z(l))^2;
    end
    printf(" and Test Error = %f \n",test_error);
  end
  disp("\n");
end

#{
%% For lambda = 1
disp("lambda = 1 ");
[v] = LinRegRegularized(x, y, x_vals_train,7,1);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,7,1);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 10
disp("lambda = 10 ");
[v] = LinRegRegularized(x, y, x_vals_train,7,10);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,7,10);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 100
disp("lambda = 100 ");
[v] = LinRegRegularized(x, y, x_vals_train,7,100);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,7,100);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);
disp("\n");


%% For 10th degree polynomial
disp("Training and Test error for 10th degree polynomial\n"); 
%% For lambda = 0
disp("lambda = 0 ");
[v] = LinRegRegularized(x, y, x_vals_train,10,0);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,10,0);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 1
disp("lambda = 1 ");
[v] = LinRegRegularized(x, y, x_vals_train,10,1);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,10,1);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 10
disp("lambda = 10 ");
[v] = LinRegRegularized(x, y, x_vals_train,10,10);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,10,10);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 100
disp("lambda = 100 ");
[v] = LinRegRegularized(x, y, x_vals_train,10,100);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,10,100);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);
disp("\n");


%% For 12th degree polynomial
disp("Training and Test error for 12th degree polynomial\n"); 
%% For lambda = 0
disp("lambda = 0 ");
[v] = LinRegRegularized(x, y, x_vals_train,12,0);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,12,0);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 1
disp("lambda = 1 ");
[v] = LinRegRegularized(x, y, x_vals_train,12,1);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,12,1);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 10
disp("lambda = 10 ");
[v] = LinRegRegularized(x, y, x_vals_train,12,10);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,12,10);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 100
disp("lambda = 100 ");
[v] = LinRegRegularized(x, y, x_vals_train,12,100);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,12,100);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);
disp("\n");


%% For 14th degree polynomial
disp("Training and Test error for 14th degree polynomial\n"); 
%% For lambda = 0
disp("lambda = 0 ");
[v] = LinRegRegularized(x, y, x_vals_train,14,0);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,14,0);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 1
disp("lambda = 1 ");
[v] = LinRegRegularized(x, y, x_vals_train,14,1);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,14,1);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 10
disp("lambda = 10 ");
[v] = LinRegRegularized(x, y, x_vals_train,14,10);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,14,10);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 100
disp("lambda = 100 ");
[v] = LinRegRegularized(x, y, x_vals_train,14,100);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,14,100);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);
disp("\n");


%% For 16th degree polynomial
disp("Training and Test error for 16th degree polynomial\n"); 
%% For lambda = 0
disp("lambda = 0 ");
[v] = LinRegRegularized(x, y, x_vals_train,16,0);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,16,0);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 1
disp("lambda = 1 ");
[v] = LinRegRegularized(x, y, x_vals_train,16,1);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,16,1);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 10
disp("lambda = 10 ");
[v] = LinRegRegularized(x, y, x_vals_train,16,10);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,16,10);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);

%% For lambda = 100
disp("lambda = 100 ");
[v] = LinRegRegularized(x, y, x_vals_train,16,100);
train_error = 0;
for i = 1:length(x_vals_train)
  train_error = train_error + (y(i) - v(i))^2;
end
printf("---> Training Error = %f",train_error);

[z] = LinRegRegularized(x, y, x_vals_test,16,100);
test_error = 0;
for i = 1:length(x_vals_test)
  test_error = test_error + (y(i) - z(i))^2;
end
printf(" and Test Error = %f \n",test_error);
disp("\n");
#}