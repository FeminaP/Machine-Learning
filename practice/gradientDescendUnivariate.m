function [J_h, t_h] = gradientDescendUnivariate(x,y,t0,t1,alpha,maxIter)
   m=length(y);
   J_h = zeros(maxIter,1);%Initialize J_h with zeros- J_h is 1500 x 1 if maxIter is 1500
   t_h = zeros(maxIter,2);%Initialize t_h with zeros - t_h is  1500 x 2 if maxIter is 1500
   t_h(1,1)=t0;
   t_h(1,2)=t1;
   J_h(1,1)=costFunction(x,y,t0,t1);
   for j=2:maxIter
          s1=s2=0;
   	  for i=1:m
   		s1 = s1+t0+t1*x(i,1)-y(i,1);
   	   	s2 = s2+(t0+t1*x(i,1)-y(i,1))*x(i,1);
   	  end
   	  t0=t0-alpha/m*s1;
   	  t1=t1-alpha/m*s2;
   	  % Store current t0 and t1 values in the appropriate place in t_h array
   	  t_h(j,1)=t0;
   	  t_h(j,2)=t1;
   	  % Compute costFunction for this t0 and t1 and store in the appropriate place in J_h
   	  J_h(j,1)=costFunction(x,y,t0,t1);
    end
end




