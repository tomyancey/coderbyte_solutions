#Have the function PrimeChecker(num) take num and return 1 if any arrangement of num comes out to be a prime number, otherwise return 0. For example: if num is 910, the output should be 1 because 910 can be arranged into 109 or 019, both of which are primes. 
def prime?(num)
	return false if num < 2
	(2..Math.sqrt(num)).each {|div| return false if num % div == 0 }
	true
end

def prime_checker(num)
	
	num_arr = num.to_s.split("").map {|x| x.to_i }
	num_arr.permutation(num_arr.size).each {|x| return 1 if prime?(x.join.to_i)}
	return -1

end