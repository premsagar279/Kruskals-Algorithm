function label( result,v )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=length(v)-1;
for i=1:n
    x=(v(result(i).src,1)+v(result(i).dest,1))/2;
    y=(v(result(i).src,2)+v(result(i).dest,2))/2;
    w=result(i).weight;
    text(x,y,w);
end

