function [ sum_ ] = spiral_diag_sum( n )
    pow = 3:2:n;
    sum_ = sum(4 * pow .^ 2 - 6 * (pow - 1)) + 1;
end

