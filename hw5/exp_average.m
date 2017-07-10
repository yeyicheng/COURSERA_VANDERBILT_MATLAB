function [ aver ] = exp_average( in, coef )
    persistent out;
    persistent b;
    
    if nargin == 2
        out = []; 
        b = coef;
    elseif isempty(b)
        b = 0.1;
    end
    
    if ~isempty(out)
        out = b * in + (1 - b) * out;
    else 
        out = in;
    end
    
    aver = out;
end

