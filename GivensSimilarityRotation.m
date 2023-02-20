function [R] = GivensSimilarityRotation(A, giv, pivots)
% Author: Adrian Ciesla 313207
%
% Function makes Givens' rotations on a real, symmetric matrix A on ...
% demanded rows and columns using a demanded Givens' matrix G. The ...
% whole transformation can be abbreviated as R = G*A*G'
% INPUT:
%       A - real, symmetric matrix
%       giv - two-dimensional vector specifying a Givens' matrix
%       pivots - two-dimensional vector specifying the rows (and ...
%                columns) in matrix A that the transformation will affect
% OUTPUT:
%       R - real, symmetric matrix got from A matrix's transformation
    
    N = length(A);
    
    % Initializing rows (and columns) that will be rotated
    r1 = pivots(1);
    r2 = pivots(2);
    
    % Initializing Givens' matrix key elements
    c = giv(1);
    s = giv(2);
    
    % Performing the Givens' rotations (A = G*A*G' where G is a ...
    % Givens' matrix specified by giv vector) on demanded rows and ...
    % columns
            
    % Operation equivalent to A = G*A
    for m = 1:N      
        x = A(r1, m)*c - A(r2, m)*s;
        y = A(r1, m)*s + A(r2, m)*c;
        A(r1, m) = x;
        A(r2, m) = y;
    end         
           
    % Operation equivalent to A = A*G' = G*A'
    for m = 1:N      
        x = A(m, r1)*c - A(m, r2)*s;
        y = A(m, r1)*s + A(m, r2)*c;
        A(m, r1) = x;
        A(m, r2) = y;
    end
    
    % Assigning a result to the output variable
    R = A;
end

