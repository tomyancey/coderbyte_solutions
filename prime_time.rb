#Have the function PrimeTime(num) take the num parameter being passed and return the string true if the parameter is a prime number, otherwise return the string false. The range will be between 1 and 2^16. 

def prime_time(num)

	return false if num < 2
	(2..Math.sqrt(num)).each {|div| return false if num % div == 0 }
	true

end