#Have the function FibonacciChecker(num) return the string yes if the number given is part of the Fibonacci sequence. This sequence is defined by: Fn = Fn-1 + Fn-2, which means to find Fn you add the previous two numbers up. The first two numbers are 0 and 1, then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci sequence, return the string no. 

def fibonacci_checker(num)

  fib = [0,1]
  return fib[0] if num == 1
  until fib[-1] >= num ; fib << fib[-1] + fib[-2] ;end
  fib[-1] == num ? "yes" : "no"
         
end