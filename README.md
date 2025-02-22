# Ada: Potential for Runtime Array Index Out of Bounds Errors

This example demonstrates a potential runtime error in Ada when dealing with array indices. Ada does not perform automatic runtime bounds checking for array accesses.

## The Bug
The `bug.ada` file contains a simple Ada program that initializes an array and then iterates through it, incrementing each element.  The issue lies in the potential for a runtime error if the loop counter or array index goes beyond the bounds of the array (for example if the array size were to be changed dynamically).

## The Solution
The `bugSolution.ada` demonstrates a safer approach using Ada's range checks.  While less efficient, enabling range checks in Ada will cause a CONSTRAINT_ERROR to be raised if the index is out of bounds.  Alternatively, careful index management and validation is essential.

## How to reproduce the bug
1. Compile and run `bug.ada`.
2. Observe the program executes without throwing any errors even though the indexing may go beyond array limits in some conditions.  Add error handling or robust indexing to prevent this.
