#have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4. For example: if num is 16 the output should be 53 as 53 is the 16th prime number. 

def prime?(num)
	return false if num < 2 
    (2..Math.sqrt(num)).each {|div| return false if num % div == 0 }
	true
end

def prime_mover(n)
	total = 0
	number = 0

	until n <= total
		number += 1
		total += 1 if prime?(number)
	end
	number
         
end