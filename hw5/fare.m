function [ price ] = fare( distance, age )
    distance = round(distance);
    
    if distance <= 1
        price = 2;
    elseif distance <= 10
        price = 2 + (distance - 1) * 0.25;
    else
        price = 2 + 9 * 0.25 + (distance - 10) * 0.1;
    end
    
    if age <= 18 || age >= 60 
       price = price * 0.8; 
    end
end

