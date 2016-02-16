training_data=load('trainData.txt');
test_data=load('testData.txt');
training_x=training_data(:,1);
training_y=training_data(:,2);
test_x=test_data(:,1);
test_y=test_data(:,2);
figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,7,0),'g','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,7,1),'b','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,7,10),'r','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,7,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','7th degree fit, lambda = 0','7th degree fit, lambda = 1','7th degree fit, lambda = 10','7th degree fit, lambda = 100');
figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,10,0),'g','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,10,1),'b','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,10,10),'r','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,10,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','10th degree fit, lambda = 0','10th degree fit, lambda = 1','10th degree fit, lambda = 10','10th degree fit, lambda = 100');
figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,12,0),'g','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,12,1),'b','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,12,10),'r','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,12,100),'y','linestyle','--','linewidth',2);legend('training data','test data','12th degree fit, lambda = 0','12th degree fit, lambda = 1','12th degree fit, lambda = 10','12th degree fit, lambda = 100');
figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,14,0),'g','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,14,1),'b','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,14,10),'r','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,14,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','14th degree fit, lambda = 0','14th degree fit, lambda = 1','14th degree fit, lambda = 10','14th degree fit, lambda = 100');
figure;
plot(training_x,training_y,'ro','markersize',5,'markerfacecolor','red');
hold on;
plot(test_x,test_y,'bo','markersize',5,'markerfacecolor','blue');
x_vals=(0:0.025:1)';
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,16,0),'g','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,16,1),'b','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,16,10),'r','linestyle','--','linewidth',2);
plot(x_vals,sabhaya_LinRegRegularized(training_x,training_y,x_vals,16,100),'y','linestyle','--','linewidth',2);
legend('training data','test data','16th degree fit, lambda = 0','16th degree fit, lambda = 1','16th degree fit, lambda = 10','16th degree fit, lambda = 100');

polynomial =[7; 10; 12; 14; 16];
lambda = [0; 1; 10; 100];

for n=1:length(polynomial)
  disp("-------------------------------------------------------------------------------------------------")
  disp(["For ", num2str(polynomial(n)), " degree polynomial"])
  disp("-------------------------------------------------------------------------------------------------")
  disp(" ")
  for l=1:length(lambda) 
  disp(["Lambda = ", num2str(lambda(l))]) 
  v = sabhaya_LinRegRegularized(training_x,training_y,training_x,polynomial(n),lambda(l));
  training_E = 0;
  for i=1:length(training_x)
    training_E = training_E + (training_y(i)- v(i))^2;
  end
  v = sabhaya_LinRegRegularized(training_x,training_y,test_x,polynomial(n),lambda(l));
  test_E = 0;
  for i=1:length(test_x)
    test_E = test_E + (test_y(i)- v(i))^2;
  end
  disp(["Training Error: ", num2str(training_E), "      Testing Error: ", num2str(test_E)])
  
  end
  disp("    ")
  
end