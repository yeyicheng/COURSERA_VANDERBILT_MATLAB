function [ result ] = eligible( v, q )
    result = (v + q) / 2 >= 92 && v > 88 && q > 88;
end

