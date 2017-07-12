function [ count ] = day_counter( year )
    if ~isscalar(year) || year < 1776 || year > 2016
        count = 0;
        return;
    end

    first_day = 1;
    for i = 1776:year - 1
        if ~rem(i, 400) || (rem(i, 100) && ~rem(i, 4)) 
            first_day = first_day + 366;
        else
            first_day = first_day + 365;
        end
    end
    
    if ~rem(year, 400) || (rem(year, 100) && ~rem(year, 4)) 
        month_days = [ 0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30 ];
    else
        month_days = [ 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 ];
    end

    day_name_acc = rem(first_day, 7);
    count = 0;
    for i = 1: 12
        day_name_acc = rem(day_name_acc + month_days(i), 7);
        if day_name_acc == 1
            count = count + 1;
        end
    end
end

