function newtonsMethod(x0, tolerance)
    % newtonsMethod: Newton's root finding algorithm.
    %   Finds an approximate root of a function using Newton's Method
    
    % Validate inputs
    validateInputs(x0, tolerance);
    
    % Call newton function to find the root and number of iterations
    [solution, iterations] = newton(@functions.f, @functions.dfdx, x0, tolerance);

    if iterations ~= -1
        fprintf('An approximate solution using Newton''s Method is: %f\n', solution)
        fprintf('Iterations: %d\n', iterations);
    else
        fprintf('Solution not found using Newton''s Method.\n')
    end
end

function [solution, iterations] = newton(f, dfdx, x0, tolerance)
    % newton: Newton's Method implementation
    %   Finds an approximate root of a function using Newton's Method
    
    x = x0;
    err = f(x);
    i = 0;
    
    while abs(err) > tolerance
        if dfdx(x) == 0
            fprintf('Error! - derivative zero for x = %d\n', x);
            exit;
        else
            x = x - (err) / dfdx(x);
        end
        
        err = f(x);
        i = i + 1;
    end

    if abs(err) > tolerance
        i = -1;
    end

    solution = x;
    iterations = i;
end

function validateInputs(x0, tolerance)
    % validateInputs: Validates the inputs of newtonsMethod function
    
    % Check if x0 is a numeric value
    if ~isnumeric(x0)
        error('x0 must be a numeric value.');
    end
    
    % Check if tolerance is a numeric value greater than zero
    if ~isnumeric(tolerance) || tolerance <= 0
        error('tolerance must be a numeric value greater than zero.');
    end
end