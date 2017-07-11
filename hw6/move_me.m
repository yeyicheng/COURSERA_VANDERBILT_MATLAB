function [ w ] = move_me( v, a )
    if nargin == 1
        a = 0;
    end
    w = [v(v ~= a) v(v == a)];
end

