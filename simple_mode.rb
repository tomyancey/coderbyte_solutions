#Have the function SimpleMode(arr) take the array of numbers stored in arr and return the number that appears most frequently (the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should be 4. If there is more than one mode return the one that appeared in the array first (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is no mode return -1. The array will not be empty. 

def simple_mode(arr)
	hold = []
	arr.each {|x| hold << x if hold.include?(x) == false }

	mode_count = 1
	mode = ""
	hold.each do |x| 
		if arr.count(x) > mode_count 
			mode = x 
			mode_count = arr.count(x) 
		end
	end

	mode_count == 1 ? -1 : mode
end
