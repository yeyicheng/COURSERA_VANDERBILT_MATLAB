function [ dd ] = day_diff( month1, day1, month2, day2 )
    monthday = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
    
    if ~isscalar(month1) || ~isscalar(day1) || ~isscalar(month2) || ~isscalar(day2)
       dd = -1;
       return;
    end
    
    if month1 < 1 || rem(month1, 1) || day1 < 1 || rem(day1, 1) || day1 > monthday(month1) ...
        || month2 < 1 || rem(month2, 1) || day2 < 1 || rem(day2, 1) || day2 > monthday(month2)
       dd = -1;
       return;
    end
    
    if month1 > month2 || (month1 == month2 && day1 > day2)
       temp = month1;
       month1 = month2;
       month2 = temp;
        
       temp = day1;
       day1 = day2;
       day2 = temp;
    end
    
    dd = sum(monthday(month1 : month2-1)) + day2 - day1;
end

