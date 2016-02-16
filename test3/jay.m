
% Question No:2
%7 degree polynomial

data=load('trainData.txt' );
test=load('testData.txt' ); 
x=data(:,1); y= data(:,2); 
x_vals = (0:0.2:1)'; 
LinRegRegularized(x, y, x_vals,7,0);
LinRegRegularized(x, y, x_vals,7,1);
LinRegRegularized(x, y, x_vals,7,10);
LinRegRegularized(x, y, x_vals,7,100);

%Graph for 7 degree polynomial     

figure; 
plot(x,y,'ro', 'markersize',5, 'markerfacecolor','red'); 
hold on; 
plot(test(:,1), test(:,2), 'bo','markersize',5, 'markerfacecolor','blue'); 
x_vals = (0:0.025:1)';
plot(x_vals, LinRegRegularized(x, y, x_vals,7,0),'g','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,7,1),'b','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,7,10),'r','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,7,100),'m','linestyle','-', 'linewidth', 2); 
title('degree 7 polynomial');
legend('training data','test data', '7th degree fit, lambda=0','7th degree fit, lambda=1','7th degree fit, lambda=10','7th degree fit, lambda=100','location','south');
legend('boxon');

%10 degree polynomial
data=load('trainData.txt' );
test=load('testData.txt' ); 
x=data(:,1); y= data(:,2); 
x_vals = (0:0.2:1)'; 
LinRegRegularized(x, y, x_vals,10,0);
LinRegRegularized(x, y, x_vals,10,1);
LinRegRegularized(x, y, x_vals,10,10);
LinRegRegularized(x, y, x_vals,10,100);

%Graph for 10 degree polynomial  
figure; 
plot(x,y,'ro', 'markersize',5, 'markerfacecolor','red'); 
hold on; 
plot(test(:,1), test(:,2), 'bo','markersize',5, 'markerfacecolor','blue'); 
x_vals = (0:0.025:1)'; 
plot(x_vals, LinRegRegularized(x, y, x_vals,10,0),'g','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,10,1),'b','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,10,10),'r','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,10,100),'m','linestyle','-', 'linewidth', 2); 
title('degree 10 polynomial');
legend('training data','test data', '10th degree fit, lambda=0','10th degree fit, lambda=1','10th degree fit, lambda=10','10th degree fit, lambda=100','location','south');
legend('boxon');

%12 degree polynomial
data=load('trainData.txt' );
test=load('testData.txt' ); 
x=data(:,1); y= data(:,2); 
x_vals = (0:0.2:1)'; 
LinRegRegularized(x, y, x_vals,12,0);
LinRegRegularized(x, y, x_vals,12,1);
LinRegRegularized(x, y, x_vals,12,10);
LinRegRegularized(x, y, x_vals,12,100);

%Graph for 12 degree polynomial 
figure; 
plot(x,y,'ro', 'markersize',5, 'markerfacecolor','red'); 
hold on; 
plot(test(:,1), test(:,2), 'bo','markersize',5, 'markerfacecolor','blue'); 
x_vals = (0:0.025:1)'; 
plot(x_vals, LinRegRegularized(x, y, x_vals,12,0),'g','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,12,1),'b','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,12,10),'r','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,12,100),'m','linestyle','-', 'linewidth', 2); 
title('degree 12 polynomial');
legend('training data','test data', '12th degree fit, lambda=0','12th degree fit, lambda=1','12th degree fit, lambda=10','12th degree fit, lambda=100','location','northwest');
legend('boxon');

%14 degree polynomial
data=load('trainData.txt' );
test=load('testData.txt' ); 
x=data(:,1); y= data(:,2); 
x_vals = (0:0.2:1)'; 
LinRegRegularized(x, y, x_vals,14,0);
LinRegRegularized(x, y, x_vals,14,1);
LinRegRegularized(x, y, x_vals,14,10);
LinRegRegularized(x, y, x_vals,14,100);

%Graph for 14 degree polynomial 
figure; 
plot(x,y,'ro', 'markersize',5, 'markerfacecolor','red'); 
hold on; 
plot(test(:,1), test(:,2), 'bo','markersize',5, 'markerfacecolor','blue'); 
x_vals = (0:0.025:1)'; 
plot(x_vals, LinRegRegularized(x, y, x_vals,14,0),'g','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,14,1),'b','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,14,10),'r','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,14,100),'m','linestyle','-', 'linewidth', 2); 
title('degree 14 polynomial');
legend('training data','test data', '14th degree fit, lambda=0','14th degree fit, lambda=1','14th degree fit, lambda=10','14th degree fit, lambda=100','location','northwest');
legend('boxon');

%16 degree polynomial
data=load('trainData.txt' );
test=load('testData.txt' ); 
x=data(:,1); y= data(:,2); 
x_vals = (0:0.2:1)'; 
LinRegRegularized(x, y, x_vals,16,0);
LinRegRegularized(x, y, x_vals,16,1);
LinRegRegularized(x, y, x_vals,16,10);
LinRegRegularized(x, y, x_vals,16,100);

%Graph for 16 degree polynomial 
figure; 
plot(x,y,'ro', 'markersize',5, 'markerfacecolor','red'); 
hold on; 
plot(test(:,1), test(:,2), 'bo','markersize',5, 'markerfacecolor','blue'); 
x_vals = (0:0.025:1)'; 
plot(x_vals, LinRegRegularized(x, y, x_vals,16,0),'g','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,16,1),'b','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,16,10),'r','linestyle','-', 'linewidth', 2); 
plot(x_vals, LinRegRegularized(x, y, x_vals,16,100),'m','linestyle','-', 'linewidth', 2); 
title('degree 16 polynomial');
legend('training data','test data', '16th degree fit, lambda=0','16th degree fit, lambda=1','16th degree fit, lambda=10','16th degree fit, lambda=100','location','northwest');
legend('boxon');

% Question No:3
% Calculate Training and Test Error
x_vals_train = [0,0.05,0.1,0.15,0.25,0.3,0.35,0.4,0.5,0.55,0.6,0.75,0.9,0.95]';
x_vals_test = [0.2,0.45,0.65,0.7,0.8,0.85]';
polynomial = [7,10,12,14,16];
lambda = [0,1,10,100];
for i = 1:length(polynomial)
  printf("Training and Test error for %d th degree polynomial \n\n",polynomial(i));
  for j = 1:length(lambda)
    printf("lambda = %d ",lambda(j));
    [v] = LinRegRegularized(x, y, x_vals_train,polynomial(i),lambda(j));
    train_error = 0;
    for k = 1:length(x_vals_train)
      train_error = train_error + (y(k) - v(k))^2;
    end
    printf("---> Training Error = %f",train_error);

    [z] = LinRegRegularized(x,y, x_vals_test,polynomial(i),lambda(j));
    test_error = 0;
    test_y = test(:,2);
    for l = 1:length(x_vals_test)
      test_error = test_error + (test_y(l) - z(l))^2;
    end
    printf(" and Test Error = %f \n",test_error);
  end
  disp("\n");
end


