function [ amag ] = accelerate( F1, F2, m )
    total_force = F1 + F2;
    accel = total_force / m;
    amag = sqrt(sum(accel .^ 2));
end

