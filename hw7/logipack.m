function [ output ] = logipack( M )
    n = length(M);
    for i = 1:n
        output{i} = find(M(i,:), n);
        if isempty(output{i})
            output{i} = [];
        end
    end
end