% TEST 02
% Author: Adrian Ciesla 313207
%
% Test checks the time it takes for PentaToTriEigGiv function to ...
% do its work

    % Clearing the workspace
    clear;

    % Basic exemplary matrix
    A = [           
         1 2 1 0 0;    
         2 1 4 3 0;     
         1 4 3 5 1;     
         0 3 5 1 3;     
         0 0 1 3 4;     
        ];

    % Test's main loop
    for j = 1:4

        % Making larger and larger matrices for next subtests
        if(j==1)
            disp(" ");
            disp("[Test 1]");
            disp("Matrix 30x30");
            M = 3*10;
        end
        if(j == 2)
            disp(" ");
            disp("[Test 2]");
            disp("Matrix 300x300");
            M = 3*100;
        end
        if(j == 3)
            disp(" ");
            disp("[Test 3]");
            disp("Matrix 900x900");
            M = 3*300;
        end
        if(j == 4)
            disp(" ");
            disp("[Test 4]");
            disp("Matrix 1500x1500");
            M = 3*500;
        end

        % Creating a matrix
        X = zeros(M, M);
        for i = 1:3:M
            X(i:i+4,i:i+4) = A;   
        end

        disp("Waiting for result...");

        % Measuring the execution time
        start = tic;

        % Launching the function
        PentaToTriEigGiv(X);

        % Printing the result
        ExecutionTime = toc(start)
    end



