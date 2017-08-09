function label( X,result,v,V)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
C = rand(v,1);%for choosing random color for node
k = 1:v;
hold on
scatter(V(:,1), V(:,2), [],C,'filled');
gplot(X(k,k),V(k,:),'-or');
text(V(:,1), V(:,2),[repmat('  ',v,1), num2str((1:v)')]);
hold off
n=v-1;
for i=1:n
    x=(V(result(i).src,1)+V(result(i).dest,1))/2;
    y=(V(result(i).src,2)+V(result(i).dest,2))/2;
    w=num2str(result(i).weight);
    t=['\leftarrow',w];
    text(x,y,t);
end
end

