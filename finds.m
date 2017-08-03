function y = finds(subset,i)
%find Summary of this function goes here
%   Detailed explanation goes here
       if (subset(i).parent~=i)
           subset(i).parent=finds(subset,subset(i).parent);
       end
       y=subset(i).parent;

end

