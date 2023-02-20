% TEST 05
% Author: Adrian Ciesla 313207
%
% Test checks if exemplary pentadiagonal matrixes are still real and ...
% symmetric after transforming them into a tridiagonal form using ...
% PentaToTriEigGiv function

    % Clearing the workspace
    clear;

    % Exemplary matrix 1
    A1 = [           
         1 2 1 0 0 0;   
         2 1 4 3 0 0;   
         1 4 3 5 1 0;   
         0 3 5 1 3 4;   
         0 0 1 3 4 5;   
         0 0 0 4 5 1;   
         ];

     % Exemplary matrix 2
     A2 = [             
          2 3 4 0 0 ;   
          3 2 3 4 0 ;   
          4 3 2 3 4 ;   
          0 4 3 2 3 ;   
          0 0 4 3 2 ;   
         ];

     % Exemplary matrix 3
     A3 = [                 
         -1  1  1  0  0 ;   
          1 -1  1  1  0 ;   
          1  1 -1  1  1 ;   
          0  1  1 -1  1 ;   
          0  0  1  1 -1 ;   
         ];

    % Tolerance for matrix's transformation error
    tol = 1e-4;

    % Test's main loop
    for i=1:3
        % Picking an exemplary matrix
        if(i==1)
            disp(" ");
            disp("[Test 1]");
            X = A1;
        end
        if(i==2)
            disp(" ");
            disp("[Test 2]");
            X = A2;
        end
        if(i==3)
            disp(" ");
            disp("[Test 3]");
            X = A3;
        end
        
        % Printing out the input matrix
        INPUT = X
        
        N = length(X);

        % Transforming matrix into a tridiagonal form
        T = PentaToTriEigGiv(X);

        % Printing out the result
        OUTPUT = T
    end
