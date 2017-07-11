function [ T ] = pendulum( L, a0 )
    g = 9.8;
    theta = a0;
    T = 0;
    t = 1e-6;
    omega = 0;
    if a0 <= 0 || a0 > pi || L <= 0
       T = 0;
       return;
    end
    while theta > 0
        alpha = -g * sin(theta) / L;
        omega = omega + alpha * t;
        theta = theta + omega * t;
        T = T + t;
    end
    T = 4 * T;
end

