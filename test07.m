% TEST 07
% Author: Adrian Ciesla 313207
%
% Test checks the behavior of PowerMethodWithNormalizingTri function ...
% depending on the maximum iterations number
    
    % Clearing the workspace
    clear;

    % Exemplary matrix
    X = [
         1 1 0 0 0
         1 2 2 0 0
         0 2 3 3 0
         0 0 3 4 4
         0 0 0 4 5
         ];

    CorrectResult = 9.29449;

    % Initializing diagonal and off-diagonal vectors
    p = [1 2 3 4 5];
    q = [1 2 3 4];
    
    % Initial informations
    disp(" ");
    disp("The error approximation tolerance is set to 1e-3.");
    CorrectResult

    % Performing the main part of the test
    disp(" ");
    disp("[Test 1]");
    disp("2 iterations maximally.");

    [Result_1 ErrorEstimation_1] = PowerMethodWithNormalizingTri(p, ...
        q, 0.001, 2);
    Result_1
    ErrorEstimation_1


    disp(" ");
    disp("[Test 2]");
    disp("10 iterations maximally.");

    [Result_2 ErrorEstimation_2] = PowerMethodWithNormalizingTri(p, ...
        q, 0.001, 10);
    Result_2
    ErrorEstimation_2

    disp(" ");
    disp("[Test 3]");
    disp("100 iterations maximally.");

    [Result_3 ErrorEstimation_3] = PowerMethodWithNormalizingTri(p, ...
        q, 0.001, 100);
    Result_3
    ErrorEstimation_3

