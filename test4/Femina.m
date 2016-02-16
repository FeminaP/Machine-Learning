function rv=plotHistory(X, v, vH, idx)
 K=length(unique(idx));
 n=size(vH,1);
 figure;hold on;scatterPlot(X,idx);
 plot(v(:,1),v(:,2),'ro','markerfacecolor','r', 'markersize',10);
 
 
 plot(vH(:,1),vH(:,2),'bo','markerfacecolor','r', 'markersize',8);
 
  for i=1:K
  jump = i;
  row = 1;
    
    while (jump <= n)
     temp(row,1) = vH(jump,1);  
     temp(row,2) = vH(jump,2);
     row = row+1;
     jump=jump+K;
   end
   
   i=i+1;
   plot(temp(:,1),temp(:,2),'b-','linewidth',2);
  end
  
end
   