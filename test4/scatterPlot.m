function scatterPlot(X, idx)
 %X is a m x 2 matrix of data points in 2D
 %idx is an index assigning each point in X to a cluster
 K=length(unique(idx)); % Number of clusters
 palette = hsv(K + 1); % a color palette using the hsv() function
 colors = palette(idx, :); % same color for data associated with the same idx value
 scatter(X(:,1), X(:,2), 15, colors);
end
