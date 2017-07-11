function [ cent ] = centuries( year )
    if ~isscalar(year) || ~isnumeric(year) || year < 0 || year > 3000 || rem(year, 1)
        cent = '';
        return;
    end
   cent_num = ceil(year / 100);
   romans_basics = [ 'I     '; 'II    '; 'III   '; 'IV    '; 'V     '; 'VI    ';...
       'VII   '; 'VIII  '; 'IX    '];
   cent_basic = rem(cent_num, 10);
   if cent_basic
       cent = strtrim(romans_basics(cent_basic, :));
   else
       cent = '';
   end
   for i = 1:floor(cent_num / 10)
       cent = strcat('X', cent);
   end
end

