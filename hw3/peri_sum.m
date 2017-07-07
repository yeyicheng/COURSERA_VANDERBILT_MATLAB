function [ ps ] = peri_sum( A )
    A(2:end-1, 2:end-1) = 0; 
    ps = sum(sum(A));
end

