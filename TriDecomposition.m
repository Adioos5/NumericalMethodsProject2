function [p, q] = TriDecomposition(A)
% Author: Adrian Ciesla 313207
%
% Function decomposes a tridiagonal, real and symmetric matrix into two ...
% vectors containing respectively diagonal and subdiagonal elements
% INPUT:
%       A - tridiagonal, real and symmetric matrix
% OUTPUT:
%       p - vector containing A matrix's diagonal elements
%       q - vector containing A matrix's subdiagonal elements
    
    N = length(A);
    
    % Initializing vectors containing A matrix's respectively ...
    % diagonal and subdiagonal elements
    p = zeros(1, N);
    q = zeros(1, N - 1);
    
    % Filling p and q vectors with appropriate values
    for k = 1:N - 1
        p(k) = A(k, k);
        q(k) = A(k + 1, k);
    end    
    p(N) = A(N, N);
end

