function [ p ] = poly_val( c0, c, x )
    if isempty(c)
        p = c0;
    elseif isscalar(c)
        poly = c0 + c*x;
        p = sum(poly(:));
    else
        if size(c, 1) > 1
            c = c';
        end
        poly = [c0, c] .* (  x .^ (0 : length(c)) );
        p = sum(poly(:));
    end
end

