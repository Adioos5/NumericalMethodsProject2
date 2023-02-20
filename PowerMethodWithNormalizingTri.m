function [result, errEst] = PowerMethodWithNormalizingTri(p, q, tol, maxIt)
% Author: Adrian Ciesla 313207
%
% Function finds a dominant eigenvalue of a tridiagonal, real and ...
% symmetric matrix using power method with normalizing
% INPUT:
%       p - vector containing tridiagonal, real and symmetric matrix's ...
%           diagonal elements
%       q - vector containing tridiagonal, real and symmetric matrix's ...
%           subdiagonal elements
% OUTPUT:
%       result - approximated dominant eigenvalue of a tridiagonal, ...
%                real and symmetric matrix with diagonal elements in p-...
%                vector and subdiagonal elements in q-vector
%       errEst - estimated approximation error, if errEst > tol, then ...
%                the result should be found as probably inappropriate
    
    N = length(p);
    
    % Initializing default result and estimated approximation error
    result = 0;
    errEst = tol + 1;
    
    % Initializing an iteration vector
    x = rand(N, 1);
    
    % Iterations of power method with normalizing
    for i = 1:maxIt
        
        % Normalizing vector x
        x = x/norm(x);
        
        % Remembering the vector x (it is needed to compute the next ...
        % form of it)
        x_prev = x;
        
        % Computing the next form of vector x
        x(1) = x_prev(1)*p(1) + x_prev(2)*q(1);
        x(N) = x_prev(N-1)*q(N-1) + x_prev(N)*p(N);
        for j = 2:N-1
            x(j) = x_prev(j-1)*q(j-1) + x_prev(j)*p(j) + x_prev(j+1)*q(j);
        end
        
        % Computing the next value of dominant eigenvalue
        result_prev = result;
        result = x_prev'*x;
        
        % Computing the new estimated approximation error
        errEst = norm(x - result_prev*x_prev)/abs(result_prev);
        
        % Stops iterating if the dominant eigenvalue is computed with ...
        % demanded approximation error's tolerance
        if(errEst <= tol)
            break;
        end 
    end
end

