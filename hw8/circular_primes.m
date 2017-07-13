function [ count ] = circular_primes( n )
    primes = zeros(1, n);
    idx = 1;
    for i = 2:n - 1
        i_str = num2str(i);
        flag = 1;
        for j = 0:length(char(i_str)) - 1
            i_shift = circshift(i_str, [1 j]);
            if ~isprime(str2double(i_shift))
                flag = 0;
                break;
            end
        end
        if flag
            primes(i) = [ i ];
            idx = idx + 1;
        end
    end
    count = length(primes(primes > 0));
end

