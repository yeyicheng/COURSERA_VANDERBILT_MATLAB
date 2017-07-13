function [ E, N ] = cyclotron( V )
    m = 3.344e-27;
    q = 1.603e-19;
    B = 1.6;
    r = sqrt(m*V/(q*B^2));
    s = -r / 2;
    N = 0;
    left = 2;
    while s >= -0.5
        s = s + r * left;
        left = -left;
        r = sqrt(r^2 + 2*m*V/(q*B^2));
        N = N + 1;
    end
    E = V * N * 10^-6;
end

