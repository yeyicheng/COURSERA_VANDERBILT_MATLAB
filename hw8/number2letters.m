function [ count ] = number2letters( n )
    basic_1 = { 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'}; 
    basic_10 = { 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen' };
    basic_20 = { 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety' };
    basic_100 = 'hundred';
    
    str = '';
    num_1 = rem(n, 10);
    num_10 = rem(floor(n / 10), 10);
    num_10s = rem(n, 100);
    num_100 = floor(n / 100);
    
    if n < 10 
        str = basic_1{ num_1 };
    else
        if num_100
            str = strcat(basic_1{ num_100 }, basic_100);
        end
        if num_10s 
            if ~num_10
                str = strcat(str, basic_1{ num_1 });
            elseif num_10 == 1
                str = strcat(str, basic_10{ num_1 + 1 });
            else
                if num_1
                    str = strcat(str, basic_20{ num_10 - 1 }, basic_1(num_1 ));
                else
                    str = strcat(str, basic_20{ num_10 - 1 });
                end
            end
        end
    end
    
    count = length(char(str));
end