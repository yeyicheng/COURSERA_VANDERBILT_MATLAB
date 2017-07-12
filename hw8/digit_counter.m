function [ count ] = digit_counter( filename )
    fid = fopen(filename, 'r');
    if fid < 0
        count = -1;
        return;
    end
    count = 0;
    tline = fgetl(fid);
    while ischar(tline)
       count = count + length(tline(tline >= '0' & tline <= '9'));
       tline = fgetl(fid);
    end
    fclose(fid);
end

