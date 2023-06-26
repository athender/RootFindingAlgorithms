function bisectionMethod(a, b, tolerance)   
    % bisectionMethod: A bisection root finding method.
    %   Finds an approximate root of a function f(x) within a given interval
    %   [a,b]. Continues until the interval size is less than the given
    %   tolerance.

    solution = bisection(@functions.f, a, b, tolerance);
    
    fprintf('The approximate root x* is: %f\n', solution);
end


function solution = bisection(f, a, b, tolerance)
    % bisectionMethod: A bisection root finding method.
    %   Implements the bisection root finding method.

    % Validate inputs
    if ~isa(f, 'function_handle')
        error('f must be a function handle.');
    end
    
    if ~isnumeric(a) || ~isnumeric(b) || ~isnumeric(tolerance)
        error('a, b, and tolerance must be numeric values.');
    end
    
    if a >= b
        error('a must be less than b.');
    end
    
    % Perform bisection method
    while abs(b - a) > tolerance
        c = (a + b)/2;

        if f(a) * f(b) <= 0
            b = c;
        else
            a = c;
        end
    end
    
    % Calculate solution
    solution = (a + b)/2;
end