#Have the function RunLength(str) take the str parameter being passed and return a compressed version of the string using the Run-length encoding algorithm. This algorithm works by taking the occurrence of each repeating character and outputting that number along with a single character of the repeating sequence. For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols. 

def run_length(str)
	arr = str.split("")
	compressed_arr = []
	total = 1
	current_char = arr.shift

	arr.each do |x|
		if x == current_char
			total += 1
		elsif x != current_char
			compressed_arr << "#{total}#{current_char}"
			current_char = x
			total = 1
		end
	end
	compressed_arr << "#{total}#{current_char}"


	compressed_arr.join

end
