function Q = intquad(n, m)
    Q1 = zeros(n, m);
    Q = [Q1, Q1 + 1; Q1 + 2, Q1 + 3];
end