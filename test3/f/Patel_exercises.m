training_data=load('trainData.txt');
test_data=load('testData.txt');
training_x=training_data(:,1);
training_y=training_data(:,2);
test_x=test_data(:,1);
test_y=test_data(:,2);
polynomial =[7; 10; 12; 14; 16];
lambda = [0; 1; 10; 100];
x_vals_train = training_x;
x_vals_test = test_x;

%Graph for degree 7 polynomial

figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,7,0),'g','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,7,1),'b','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,7,10),'r','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,7,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','7th degree fit, lambda = 0','7th degree fit, lambda = 1','7th degree fit, lambda = 10','7th degree fit, lambda = 100','location','southwest');

%Graph for degree 10 polynomial

figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,10,0),'g','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,10,1),'b','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,10,10),'r','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,10,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','10th degree fit, lambda = 0','10th degree fit, lambda = 1','10th degree fit, lambda = 10','10th degree fit, lambda = 100');

%Graph for degree 12 polynomial

figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,12,0),'g','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,12,1),'b','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,12,10),'r','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,12,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','12th degree fit, lambda = 0','12th degree fit, lambda = 1','12th degree fit, lambda = 10','12th degree fit, lambda = 100');

%Graph for degree 14 polynomial

figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,14,0),'g','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,14,1),'b','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,14,10),'r','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,14,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','14th degree fit, lambda = 0','14th degree fit, lambda = 1','14th degree fit, lambda = 10','14th degree fit, lambda = 100');

%Graph for degree 16 polynomial

figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,16,0),'g','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,16,1),'b','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,16,10),'r','linestyle','--','linewidth',2);
plot(x_vals,Patel_LinRegRegularized(training_x,training_y,x_vals,16,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','16th degree fit, lambda = 0','16th degree fit, lambda = 1','16th degree fit, lambda = 10','16th degree fit, lambda = 100');%}

%Calculating Training and Test Errors

for n = 1:length(polynomial)
  printf("\n Training and Test error for %d th degree polynomial \n\n",polynomial(n));
  for l = 1:length(lambda)
    printf("lambda = %d \n",lambda(l));
    [predict_training] = Patel_LinRegRegularized(training_x, training_y, x_vals_train,polynomial(n),lambda(l));
    train_error = 0;
    for i = 1:length(x_vals_train)
      train_error = train_error + (training_y(i) - predict_training(i))^2;
    end
    [predict_test] = Patel_LinRegRegularized(training_x, training_y, x_vals_test,polynomial(n),lambda(l));
    test_error = 0;
    for j = 1:length(x_vals_test)
      test_error = test_error + (test_y(j) - predict_test(j))^2;
    end
    printf("Training Error = %f",train_error);
    printf("     Test Error = %f ",test_error);
    disp("");
  end
end

