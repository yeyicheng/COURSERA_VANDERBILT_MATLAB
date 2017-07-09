function percentage = zero_stat(M)
    z = length(M(M == 0));
    o = length(M(M == 1));
    percentage = z / (z + o) * 100;
end