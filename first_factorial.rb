=begin
Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
=end

def first_factorial(num)

    (1..num).to_a.reduce(:*)
    
end