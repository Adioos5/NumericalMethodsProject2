% TEST 01
% Author: Adrian Ciesla 313207
%
% Test shows step-by-step how DominantEigenvalueMain function works on ...
% an exemplary matrix
    
    % Clearing the workspace
    clear;

    disp("Starting with a pentadiagonal, real and symmetric matrix:");

    % Exemplary matrix
    A =  [              
         1 2 1 0 0 0;   
         2 1 4 3 0 0;   
         1 4 3 5 1 0;   
         0 3 5 1 3 4;   
         0 0 1 3 4 5;   
         0 0 0 4 5 1;   
         ]
    
    % Printing out step 1
    disp("Step 1:");
    disp(['Converting A matrix to a tridiagonal form. Eigenvalues '... 
        'should be preserved.']);
    
    temp = A;
    
    A = PentaToTriEigGiv(A)
    EigenvaluesBeforeTransformation = eig(temp)
    EigenvaluesAfterTransformation = eig(A)
    
    % Printing out step 2
    disp("Step 2:");
    disp("Decomposing A matrix into two vectors.");
    
    [p, q] = TriDecomposition(A);
    
    p
    q
    
    % Printing out step 3
    disp("Step 3:");
    disp(['Calculating the dominant eigenvalue of matrix A with error '...
        'tolerance 1e-3.']);
    
    [result, errEst] = PowerMethodWithNormalizingTri(p, q, 0.001, 1000);
    
    result
    errEst