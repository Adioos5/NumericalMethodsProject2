function [result, errEst] = DominantEigenvalueMain(A, tol, maxIt)
% Author: Adrian Ciesla 313207
%
% Function approximates a dominant eigenvalue of a pentadiagonal, real ...
% and symmetric matrix using power method with normalizing, ...
% previously transforming it into a tridiagonal matrix without changing ...
% its eigenvalues using Givens' rotations.
% INPUT:
%       A - pentadiagonal, real and symmetric matrix
%       tol - approximation error's tolerance
%       maxIt - the maximum allowable number of power method's iterations
% OUTPUT:
%       result - approximated dominant eigenvalue of matrix A
%       errEst - estimated approximation error, if errEst > tol, then ...
%                the result should be found as probably inappropriate

end