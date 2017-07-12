function [ num ] = smallest_multiple( n )
    factors = [];
    for i = n:-1:1
        temp = factors;
        curr_factors = find_factors(i);
        for j = 2 : i
           cnt_curr = length(curr_factors(curr_factors == j));
           cnt_factors = length(temp(temp == j));
           if cnt_curr > cnt_factors
              factors = [ factors,  zeros(1, cnt_curr - cnt_factors) + j ];
           end
        end
    end

    num = prod(uint64(factors) , 'native');
    
    if intmax('uint64') <= num
      	num = uint64(0);
    else
        num = uint64(num);
    end
    
    function [factors] = find_factors(nn)
        k = 2;
        factors = [];
        while nn ~= 1
            if rem(nn, k)
               k = k + 1;
            else 
               factors = [factors, k];
               nn = nn / k;
            end
        end
    end
end

