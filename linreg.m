function y1=linreg(x,y,x1,n,l)

for i=1:length(x)
    for j=0:n
     z(i,j+1)=x(i)^j;
    
        
    end
end


a1=z'*z;
a2=(l*eye(6));
a2(1,1)=0;
a3=(a1+a2)^-1;
a4=z'*y;
a=a3*a4;


for i=1:length(x1)
    for j=0:5
     z1(i,j+1)=x1(i)^j;
    
        
    end
end

res=a'*z1';
y1=res;

end