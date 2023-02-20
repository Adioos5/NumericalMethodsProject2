% TEST 06
% Author: Adrian Ciesla 313207
%
% Test checks if the results of DominantEigenvalueMain function on the ...
% same matrix are always the same (shouldn't be because of randomizing ...
% the starting vector in power method's function)
    
    % Clearing the workspace
    clear;

    % Exemplary matrix
    A = [            
         1 2 1 0 0;  
         2 1 4 3 0;  
         1 4 3 5 1;  
         0 3 5 1 3;  
         0 0 1 3 4;  
        ];
    
    % Performing the main part of the test
    disp(" ");
    disp("[Test 1]");

    [Result_1, err] = DominantEigenvalueMain(A, 0.1, 1000);
    Result_1

    disp(" ");
    disp("[Test 2]");

    [Result_2, err] = DominantEigenvalueMain(A, 0.1, 1000);
    Result_2

    disp(" ");
    disp("[Test 3]");

    [Result_3, err] = DominantEigenvalueMain(A, 0.1, 1000);
    Result_3