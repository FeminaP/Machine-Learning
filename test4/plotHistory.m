function rv=plotHistory(X, v, vH, idx)
 % X is the sample data
 % v is the final centroids
 % vH is the history of centroids
 % idx is the index of cluster assignments to data points

 K=length(unique(idx));
 n=size(vH,1);
 figure;hold on;scatterPlot(X,idx);
 plot(v(:,1),v(:,2),'ro','markerfacecolor','r', 'markersize',10);
 plot(vH(:,1),vH(:,2),'bo','markerfacecolor','r', 'markersize',8);
 
   for i=1:K;
    j=i;
    x=1;
     
    while(j <= n)
     m(x,1)=vH(j,1);
     m(x,2)=vH(j,2);
     j=j+K;
     x=x+1;
    end
   
    i=i+1;
     plot(m(:,1),m(:,2),'b-','linewidth',3);
  end
 end 