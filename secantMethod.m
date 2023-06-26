function secantMethod(a, b, tolerance)
    % secantMethod: Secant root finding algorithm.
    %   Finds an approximate root of a function using the Secant Method
    %   within the given interval [a, b]. Continues until the difference
    %   between consecutive solutions is less than the given tolerance.

    % Call secant function to find the root and number of iterations
    [solution, iterations] = secant(@functions.f, a, b, tolerance);
    
    fprintf('Iterations: %d\n', (2*iterations)+1);
    fprintf('An approximate solution, using the Secant Method, is: %f\n', solution);
end

function [solution, iterations] = secant(f, a, b, tolerance)
    % secant: Secant Method implementation
    %   Finds an approximate root of a function using the Secant Method
    
    fa = f(a);
    fb = f(b);
    iterations = 0;
    err = inf;
    
    while err > tolerance
        iterations = iterations + 1;
        
        % Compute the next solution using the secant formula
        solution = b - fb * (b - a) / (fb - fa);
        
        fc = f(solution);
        err = abs(fc);

        % Update variables for the next iteration
        a = b;
        b = solution;
        fa = fb;
        fb = fc;
    end
end