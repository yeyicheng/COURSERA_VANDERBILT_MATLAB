function sqr = reverse_diag(n)
	sqr = zeros(n);
    sqr(n) = 1;
	sqr(n:n-1:n*n-n+1) = 1;
end