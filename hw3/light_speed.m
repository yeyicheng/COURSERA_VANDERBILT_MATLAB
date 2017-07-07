function [ time, mile ] = light_speed( distances )
    time = distances / 300000 / 60;
    mile = distances / 1.609;
end

