

function v = a_LinRegRegularized (xData, yData, x_vals,n,lambda)

m = length(xData);
m2= length(x_vals);

X = [ones(m,1) xData];

for i=2:n
    X = [X xData.^i];
end
%%printf("%f \n", X);
dg = eye(n+1);
dg(1,1) = 0;
x_tranpose = X';
theta = pinv(x_tranpose*X + lambda*dg)*x_tranpose*yData;

XINPUT = [ones(m2,1) x_vals];
for j=2:n
    XINPUT = [XINPUT x_vals.^j];
end
%%printf("%.5f \n", XINPUT);
v = theta'*XINPUT';
endfunction
