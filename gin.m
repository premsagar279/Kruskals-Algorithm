function g= gin(e)
%ginput Summary of this function goes here
%  Detailed explanation goes here
disp('enter the source destination and weight of edge');
fprintf('src  dest weight\n');
  g=struct; 
for i=1:e
    fprintf('edge%2d\n',i);
    g(i).src=input('src:');
    g(i).dest=input('dest:');
    g(i).weight=input('weight:');
end
end

