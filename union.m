function subset=union( subset,x,y)
%union Summary of this function goes here
%   Detailed explanation goes here
	 xroot = finds(subset, x);
	 yroot = finds(subset, y);

	% Attach smaller rank tree under root of high rank tree
	% (Union by Rank)
    if (subset(xroot).rank < subset(yroot).rank)
		subset(xroot).parent = yroot;
    elseif (subset(xroot).rank > subset(yroot).rank)
		subset(yroot).parent = xroot;
        
	% If ranks are same, then make one as root and increment
	% its rank by one
    else
		subset(yroot).parent = xroot;
		subset(xroot).rank=subset(xroot).rank+1;
    end
end

