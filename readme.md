# Root Finding Methods

MATLAB code for three root finding methods: Bisection Method, Newton's Method, and the Secant Method. 

## Contents

- `bisectionMethod.m`: Implements the Bisection Method to find an approximate root of a function within a given interval.
- `newtonsMethod.m`: Implements Newton's Method to find an approximate root of a function.
- `secantMethod.m`: Implements the Secant Method to find an approximate root of a function within a given interval.
	
  - `functions` (folder):
    - `f.m`: Defines the function for which the roots are being found.
    - `dfdx.m`: Defines the derivative of the function.
    - `validateInputs.m`: Validates the inputs of the root finding methods.
			
## Usage

1. Run the desired root finding method script (`bisectionMethod.m`, `newtonsMethod.m`, or `secantMethod.m`) in MATLAB.
2. Modify the `f.m` and `dfdx.m` files to define your specific function and its derivative.