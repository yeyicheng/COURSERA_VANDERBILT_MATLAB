function [ n ] = palin_product( dig, lim )
    maxi = 10 ^ dig - 1;
    mini = 10 ^ (dig - 1);

    table = (mini:maxi)' * (mini:maxi);
    filtered = table(table < lim);
    palins = [];
    for i = 1:length(filtered)
       p_str = int2str(filtered(i));
       if strcmp(p_str, p_str(end:-1:1)) 
          palins = [palins filtered(i)];
       end
    end
    
    n = max(palins(:));
    
    if isempty(n)
       n = 0; 
    end
end

