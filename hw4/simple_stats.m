function S = simple_stats(N)
    aver = mean(N, 2);
    med = median(N, 2);
    mini = min(N, [], 2);
    maxi = max(N, [], 2);
    S = [ aver med mini maxi ];
end