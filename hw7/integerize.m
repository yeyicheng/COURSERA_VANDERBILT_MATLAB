function [ output ] = integerize( A )
    if ~isempty(A(A == -1e20))
        output = 'NONE';
        return;
    end
    maxi = max(A(:));
    mini = min(A(:));
    if int8(maxi) == maxi && int8(mini) == mini
        output = 'int8'; 
    elseif int16(maxi) == maxi && int16(mini) == mini
        output = 'int16';
    elseif int32(maxi) == maxi && int32(mini) == mini
        output = 'int32';
    elseif int64(maxi) == maxi && int64(mini) == mini
        output = 'int64';
    else 
        output = 'NONE';
    end
end

