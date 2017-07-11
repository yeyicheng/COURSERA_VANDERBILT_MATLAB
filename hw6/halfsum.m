function [ sum ] = halfsum( A )
    [row, col] = size(A);
    if row < col
       A = [ zeros(col - row, col); A ];
    elseif row > col
       A = [ A zeros(row, row - col) ];
    end
    [row, col] = size(A);
    sum = 0;
    for i = row - col + 1: row
        for j = col : -1 : col - i + 1
            sum = sum + A(i, j);
        end
    end
end

