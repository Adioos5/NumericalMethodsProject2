function [R] = PentaToTriEigGiv(A)
% Author: Adrian Ciesla 313207
%
% Function transforms a pentadiagonal, real and symmetric matrix into ...
% a tridiagonal form preserving its eigenvalues using Givens' rotations
% INPUT:
%       A - pentadiagonal, real and symmetric matrix
% OUTPUT:
%       R - tridiagonal, real and symmetric matrix having the same ...
%           eigenvalues as A matrix
    
    N = length(A);
    
    % Transformation's main loop
    for k = 1:N - 2 
        
        % Initializing a variable needed for annihilating the non-zero ...
        % elements under third diagonal in k-column
        d = N - 1;
        
        % Looking for a first non-zero element under third diagonal in ...
        % k-column
        while A(d + 1, k) == 0 && d >= k + 1
            d = d - 1;
        end
        
        % Annihilating all elements under third diagonal in k-column ...
        % using Givens' rotations
        while d >= k + 1
            
            % Initializing two neighboring elements in the k-column
            x1 = A(d, k);
            x2 = A(d + 1, k);
            
            % Configuring a Givens' matrix
            if(abs(x2) >= abs(x1))
                r = -x1/x2;
                s = 1/sqrt(1 + r^2);
                c = s*r;          
            else
                r = -x2/x1;
                c = 1/sqrt(1 + r^2);
                s = c*r;
            end
            
            % Annihilating the lower element in the k-column ...
            % simultaneously preserving the eigenvalues of matrix A
            A = GivensSimilarityRotation(A, [c s], [d d+1]);
            
            % Moving higher in the k-column
            d = d - 1;
        end
    end
    
    % Assigning a result to the output variable
    R = A;
end

