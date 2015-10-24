#Have the function ArrayAddition(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers. 
def array_addition_i(arr)
  
	arr.sort!
	max = arr.pop
	combo_val = 1

	until combo_val > arr.size
		arr.combination(combo_val).each {|x| return true if x.reduce(:+) == max}
		combo_val += 1
	end
	false

end
   