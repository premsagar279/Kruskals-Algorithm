clc;
fprintf('Enter no of vertices and edge in graph\n');
v=input('no of vertices:');
e=input('no of edges:');
%gin(e) is a function which takes no of edge of graph as input and
%returns a graph having source destination and weight of crossponding edges
graph=gin(e);
fprintf('enter coordinates of %d vertices in order\n',v);
V=ginput(v);
%display input graph
%Y=disp_mst(graph,v);
%label(Y,graph,v,V);
%V is vx2 matrix containing coordinate of each v vertices
%sorting the edge of graph crossponding to its weight and storing its value
%in new graph graph g
g=gsort(graph,'weight');
subset=struct;
for i=1:v
    subset(i).parent=i;
    subset(i).rank=0;
end
i=1;
E=1;
result=struct;
% Number of edges to be taken is equal to v-1
while(E<v)
    %Step 2: Pick the smallest edge. And increment the index
    % for next iteration
    next_edge=g(i);
   	 x = finds(subset, next_edge.src);
     y = finds(subset, next_edge.dest); 
     i=i+1; 
     % including this edge does't cause cycle, include it
     % in result and increment the index of result for next edge
     if (x ~= y)
			result(E).src= next_edge.src;
            result(E).dest= next_edge.dest;
            result(E).weight= next_edge.weight;
			subset=union(subset, x, y);
            E=E+1;
     end
     %Else discard the next_edge
end
% print the contents of result[] to display the built MST
disp('Following are the edges in the constructed MST');
X=disp_mst(result,v); %X is adjecency matrix of mst
%disp(X);
%PLLOTING THE REQUIRED MST
label(X,result,v,V);
     


