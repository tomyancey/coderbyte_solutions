#Using the Ruby language, have the function AdditivePersistence(num) take the num parameter being passed which will always be a positive integer and return its additive persistence which is the number of times you must add the digits in num until you reach a single digit. For example: if num is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

def additive_persistence(num)
	num_str = num.to_s
	total = 0

	until num_str.length == 1
		num_str = num_str.split("").map {|x| x.to_i }.reduce(:+).to_s
		total += 1
	end

	total
end

puts additive_persistence(19)
