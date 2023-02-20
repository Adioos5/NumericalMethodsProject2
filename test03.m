% TEST 03
% Author: Adrian Ciesla 313207
%
% Test checks the time it takes for PowerMethodWithNormalizingTri ...
% function to do its work and its results
    
    % Clearing the workspace
    clear;
    
    % Test's main loop
    disp(" ");
    disp("Error estimation tolerance is set to 1e-2.");
    for j = 1:6

        % Making larger and larger matrices for next subtests
        if(j == 1)
            disp(" ");
            disp("[Test 1]");
            disp("Tridiagonal real symmetric matrix 100x100");
            p = rand(100, 1);
            q = rand(99, 1);
        end
        if(j == 2)
            disp(" ");
            disp("[Test 2]");
            disp("Tridiagonal real symmetric matrix 1000x1000");
            p = rand(1000, 1);
            q = rand(999, 1);
        end
        if(j == 3)
            disp(" ");
            disp("[Test 3]");
            disp("Tridiagonal real symmetric matrix 10 000 x 10 000");
            p = rand(10000, 1);
            q = rand(9999, 1);
        end
        if(j == 4)
            disp(" ");
            disp("[Test 4]");
            disp("Tridiagonal real symmetric matrix 100 000 x 100 000");
            p = rand(100000, 1);
            q = rand(99999, 1);
        end
        if(j == 5)
            disp(" ");
            disp("[Test 5]");
            disp(['Tridiagonal real symmetric matrix 1 000 000 x' ...
                ' 1 000 00']);
            p = rand(1000000, 1);
            q = rand(999999, 1);
        end
        if(j == 6)
            disp(" ");
            disp("[Test 6]");
            disp(['Tridiagonal real symmetric matrix 10 000 000 x' ...
                '10 000 000']);
            p = rand(10000000, 1);
            q = rand(9999999, 1);
        end

        disp("Waiting for result...");

        % Measuring the execution time
        start = tic;

        % Launching the function
        PowerMethodWithNormalizingTri(p, q, 0.01, 1000);
        
        % Printing the results
        ExecutionTime = toc(start)
    end



