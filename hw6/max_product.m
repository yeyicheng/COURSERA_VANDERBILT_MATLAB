function [ p, ind ] = max_product( v, n )
    v = v(:)';
    [row, col] = size(v);
    if col < n
        p = 0;
        ind = -1;
        return;
    end
    p = -inf;
    for i = 1 : col - n + 1
        pp = prod(v(i : i + n - 1));
        if pp > p
            p = pp;
            ind = i;
        end
    end
end

