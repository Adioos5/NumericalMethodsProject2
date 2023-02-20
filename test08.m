% TEST 08
% Author: Adrian Ciesla 313207
%
% Test checks if PentaToTriEigGiv function doesn't change the matrix if ...
% it doesn't have to

    % Clearing the workspace
    clear;

    % Exemplary matrix 1
    A1 = [       1 2 0 0 0;
                 2 1 3 0 0;
                 0 3 1 2 0;
                 0 0 2 1 3;
                 0 0 0 3 1;
                ];
    % Exemplary matrix 2
    A2 = [        1 -1  0  0  0;
                 -1  1 -2  0  0;
                  0 -2  1 -3  0;
                  0  0 -3  1 -4;
                  0  0  0 -4  1;
                ];

    % Exemplary matrix 3
    A3 = [       9  1  0  0  0;
                 1 -2  2  0  0;
                 0  2  5  4  0;
                 0  0  4  7  6;
                 0  0  0  6  1;
                ];

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

        % Printing the input and the output
        INPUT = X
        OUTPUT = PentaToTriEigGiv(X)
    end
