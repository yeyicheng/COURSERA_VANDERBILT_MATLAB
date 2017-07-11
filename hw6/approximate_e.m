function [ e, k ] = approximate_e( delta )
	e = 1;
    k = 1;
    p = 1;
    while abs(e - exp(1)) > delta
        p = p * k;
        e = e + 1 / p; 
        k = k + 1;        
    end
    k = k - 1;
end

