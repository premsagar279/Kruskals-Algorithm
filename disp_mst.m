function X=disp_mst(mst,v)
%mst Summary of this function goes here
%   Detailed explanation goes here
e=size(mst,2);
X(v,v)=0;%X IS ADJECENCY MATRIX 
for i=1:v
    for j=1:v
        X(i,j)=0;  %Initializing matrix element with zero
    end
end
for i=1:e
    X(mst(i).src,mst(i).dest)=1; 
    X(mst(i).dest,mst(i).src)=1;
end
%display required the edge in  mst with its weight 
for i=1:e
    fprintf('%d-----------%d=%2d\n',mst(i).src,mst(i).dest,mst(i).weight);
end

