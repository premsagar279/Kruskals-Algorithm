function outStructArray = gsort( g, fieldName )
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    if ( ~isempty(g) &&  length (g) > 0)
      [~,I] = sort(arrayfun (@(x) x.(fieldName), g)) ;
      outStructArray = g(I) ;        
    else 
        disp ('graph is empty');
    end      
end
