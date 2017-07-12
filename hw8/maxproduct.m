function [ p ] = maxproduct( A, n )
    [r, c] = size(A);
    maxim = zeros(1, 4) - inf;
    indices = {};
    
    for i = 1 : r
        for j = 1 : c - n + 1
            pp = prod(A(i, j : j + n - 1));
            if pp > maxim(1)
                maxim(1) = pp;
                indices{1} = [zeros(n, 1) + i, (j : j + n - 1)'];
            end
        end
    end
    
    for j = 1 : c
        for i = 1 : r - n + 1
            pp = prod(A(i : i + n - 1, j));
            if pp > maxim(2)
                maxim(2) = pp;
                indices{2} = [(i : i + n - 1)', zeros(n, 1) + j ];
            end
        end
    end
    
    if c == 1 || r == 1
        if n == 1
            [maxim(3), Id] = max(A(:));
            [maxim(4), Id] = max(A(:));
            if c == 1
                indices{3} = [Id, 1];
                indices{4} = [Id, 1];
            else
                indices{3} = [1,Id];
                indices{4} = [1,Id];
            end
        else
            indices{3} = [];
            indices{4} = [];
        end
    else
        for diag_dim = -r+1:c-1
            diags = diag(A, diag_dim)';
            for j = 1 : length(diags) - n + 1
                pp = prod(diags(1, j : j + n - 1));
                if pp > maxim(3)        
                    maxim(3) = pp;
                    if diag_dim >= 0
                        indices{3} = [(j: j + n - 1)' (j + diag_dim:j + n - 1 + diag_dim)'];
                    else
                        indices{3} = [(j - diag_dim:j + n - 1 - diag_dim)' (j:j + n - 1)'];
                    end
                end
            end
        end

        for diag_dim = -r+1:c-1
            reverse_diags = diag(flipud(A), diag_dim)';
            len_rev_diag = length(reverse_diags);
            for j = 1 : len_rev_diag - n + 1
                pp = prod(reverse_diags(1, j : j + n - 1));
                if pp > maxim(4)
                    maxim(4) = pp;
                    if diag_dim >= 0
                        indices{4} = [(r + 1 - j - n + 1 : r - j + 1  )' (j + diag_dim + n - 1 : -1 :diag_dim + j)'];
                    else
                        indices{4} = [(r + 1 + diag_dim - j - n + 1 : r + 1 + diag_dim - j)' (j + n - 1 : -1 : j)' ];
                    end
                end
            end
        end
    end
    
    [ m, I ] = max(maxim);

    if I > length(indices)
        p = []; 
    else
        p = indices{I};
    end
end

