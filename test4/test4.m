st = load('clusterData.txt');
X = st(:,:);
ic=[3.99788 , 0.88682; 0.25258, 4.35401; 1.05949, 4.55498];
[v vH idx]=kMeansHistory(X,ic,100);
plotHistory(X,v,vH,idx)
