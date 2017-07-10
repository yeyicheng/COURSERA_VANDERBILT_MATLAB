function [ res ] = holiday( month, day )
    holidays = [ 1, 1; 7, 4; 12, 25; 12, 31 ];
    res = ismember([month,day], holidays, 'rows');
end