function [result, aver] = sindeg(deg)
    result = sin(deg2rad(deg));
    aver = mean(result(:));
end