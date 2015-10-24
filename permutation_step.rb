#Have the function PermutationStep(num) take the num parameter being passed and return the next number greater than num using the same digits. For example: if num is 123 return 132, if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999). 

def permutation_step(num)
	arr = num.to_s.split("").map {|x| x.to_i }
	idx = arr.size - 1

	until idx <= 0
		if arr[idx] > arr[idx - 1]
			hold = arr[idx]
			arr[idx] = arr[idx - 1]
			arr[idx - 1] = hold
			break
		end
		idx -= 1
	end
	return -1 if idx == 0
	
	(arr[0..idx - 1] + arr[idx..-1].sort).join.to_i
	         
end