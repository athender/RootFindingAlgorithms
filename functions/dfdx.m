function yprime = dfdx(x)
    % dfdx: Derivative of the function
    %   Modify this function to calculate the derivative of your specific function
    
    yprime = exp(x) + 2*x/(x^2 + 1/10)^2;
end