function [ output ] = dial( str )
    strs = [ 'ABC '; 'DEF '; 'GHI '; 'JKL '; 'MNO '; 'PQRS'; 'TUV '; 'WXYZ' ]
    output = zeros(1, length(str(:)));
    for i = 1:length(str(:))
        flag = false;
        if int8(str(i)) >= 48 && int8(str(i)) <= 57
            output(i) = num2str(str(i) - 48);
            continue; 
        end
        for j = 1:length(strs)
            idx = strfind(strtrim(strs(j, :)), str(i));
            if ~isempty(idx)
                output(i) = num2str(j + 1);
                flag = true;
                break;
            end
        end
        if ~flag
           output = uint64(0);
           return;
        end
    end
    output = uint64(str2double(strcat(output)));
end

