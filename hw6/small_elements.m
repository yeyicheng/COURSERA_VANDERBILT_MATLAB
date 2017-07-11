function [ I ] = small_elements( X )
    [r,c] = size(X);
    [x,y] = find(X < ((1:r)' * (1:c)));
    I = [x(:), y(:)];
end

