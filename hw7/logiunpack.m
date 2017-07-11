function [ M ] = logiunpack( C )
   n = length(C);  
   M = false(n);
   for j = 1:n
       M(j, C{j}) = true;
   end
end