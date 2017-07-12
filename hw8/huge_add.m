function [ result ] = huge_add( n1, n2 )
    len1 = length(n1);
    len2 = length(n2);
    len = len1;
    
    for i = 1:abs(len1-len2)
        if len1 >= len2
            len = len1;
            n2 = strcat('0', n2); 
        else
            len = len2;
            n1 = strcat('0', n1); 
        end
    end
    
    carry = 0;
    result = '';
    for i = len:-1:1
        if ~ischar(n1(i)) || ~ischar(n2(i)) || num2str(n1(i)) < '0' || num2str(n1(i)) > '9' || num2str(n2(i)) < '0' || num2str(n2(i)) > '9'
            result = -1;
            return;
        end
        
        d1 = str2double(n1(i));
        d2 = str2double(n2(i));
        sum = rem(d1 + d2 + carry, 10);
        carry = floor((d1 + d2 + carry) / 10);
        result = strcat(num2str(sum), result);
    end
    
    if carry > 0
        result = strcat(num2str(carry), result);
    end
end

