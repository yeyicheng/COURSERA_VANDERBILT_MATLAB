function result = sum3and5muls(n) 
    threes = 3:3:n;
    fives = 5:5:n;
    uniq = unique([threes fives]);
    result = sum(uniq);
end