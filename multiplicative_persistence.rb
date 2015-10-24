#Using the Ruby language, have the function MultiplicativePersistence(num) take the num parameter being passed which will always be a positive integer and return its multiplicative persistence which is the number of times you must multiply the digits in num until you reach a single digit. For example: if num is 39 then your program should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 

def multiplicative_persistence(num)
	num_str = num.to_s
	total = 0

	until num_str.length == 1
		num_str = num_str.split("").map {|x| x.to_i }.reduce(:*).to_s
		total += 1
	end

	total
end