function [ output ] = dial( str )
    strs = [ 'ABC '; 'DEF '; 'GHI '; 'JKL '; 'MNO '; 'PQRS'; 'TUV '; 'WXYZ' ];
    output = zeros(1, length(str(:)));
    for i = 1:length(str(:))
        if int8(str(i)) >= 48 && int8(str(i)) <= 57
            output(i) = str(i) - 48;
            continue; 
        end
        for j = 1:length(strs)
            idx = strfind(strs(j, :), str(i));
            if ~isempty(idx)
                output(i) = j + 1;
                break;
            end
        end
    end
    output = uint64(output);
end

