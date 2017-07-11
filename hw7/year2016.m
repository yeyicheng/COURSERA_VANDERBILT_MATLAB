function [ stru ] = year2016( month )
    month_days = [ 31 29 31 30 31 30 31 31 30 31 30 31 ];
    month_name = [ 'January  '; 'February '; 'March    '; 'April    '; 'May      '; 'June     '; ...
        'July     '; 'August   '; 'September'; 'October  '; 'November '; 'December ' ];
    if ~isscalar(month) || month < 1 || month > 12 || rem(month, 1)
       stru = [];
       return;
    end
    
    for i = 1:month_days(month)
       [num, name] = weekday(strcat([int2str(i), '-', strtrim(month_name(month,:)), '-2016']))
       stru(i) = struct('month', strtrim(month_name(month, :)), 'date', i, 'day', name); 
    end
end

