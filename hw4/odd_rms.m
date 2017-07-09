function orms = odd_rms(nn)
    odd = 1:2:2*(nn-1)+1;
    orms = sqrt(mean(odd.^2, 2));
end