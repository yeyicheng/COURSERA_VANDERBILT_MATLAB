function [ a, b, c ] = sort3( v )
    a = v(1);
    b = v(2);
    c = v(3);
    if a > b
        temp = a;
        a = b;
        b = temp;
    end
    if a > c
        temp = a;
        a = c;
        c = temp;
    end
    if b > c
        temp = b;
        b = c;
        c = temp;
    end
end

