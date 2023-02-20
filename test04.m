% TEST 04
% Author: Adrian Ciesla 313207
%
% Test checks if GivensSimilarityRotation function preserves matrix's ...
% symmetry and its eigenvalues preservation error

    % Clearing the workspace
    clear;

    % Exemplary matrix 1
    A1 = [ 
         1 2 0 0; 
         2 1 3 4;
         0 3 1 2;
         0 4 2 1;
        ];

    % Exemplary matrix 3
    A2 = [
         1 5 0 0;
         5 2 3 5;
         0 3 3 5;
         0 5 5 4;
        ];

    % Exemplary matrix 3
    A3 = [
          2 -9 -4  0;
         -9 -6  5  1;
         -4  5  9 -7;
          0  1 -7  3;
         ];

    tol = 1e-4;

    % Test's main loop
    for i = 1:3

        % Switching the exemplary matrices
        if(i == 1)
            disp(" ");
            disp("[Test 1]");
            X = A1;
        end
        if(i == 2)
            disp(" ");
            disp("[Test 2]");
            X = A2;
        end
        if(i == 3)
            disp(" ");
            disp("[Test 3]");
            X = A3;
        end

        % Saving input
        INPUT = X;
        StartingEigenvalues = eig(X);

        % Randomizing arguments for Givens' matrix
        a = rand(1,1);
        b = 1 - a;
        c = randi([1 4],1,1);
        d = mod(c, 4) + 1;

        % Performing the transformation
        X = GivensSimilarityRotation(X, [sqrt(a) sqrt(b)], [c d]);

        % Saving output
        OUTPUT = X;
        ResultEigenvalues = eig(X);

        % Printing out the results
        INPUT
        OUTPUT
        EigError = abs(sort(StartingEigenvalues) - sort(ResultEigenvalues))

    end
