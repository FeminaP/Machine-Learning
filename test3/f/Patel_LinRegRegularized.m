function v = LinRegRegularized(xData,yData,x_vals,n,lambda)

m = length(xData);
m2 = length(x_vals);

for i=1:m
  for j=0:n
    X(i,j+1) = xData(i)^j;
  end 
end

dg=eye(n+1);
dg(1,1)=0;

theta= pinv((X' * X) + (lambda .* dg)) * (X' * yData);

for i=1:m2
  for j=0:n
    XINPUT(i,j+1) = x_vals(i)^j;
  end
end 

v = theta' * XINPUT';

end