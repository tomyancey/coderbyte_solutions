#Have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1. 
def bracket_matcher(str)
	arr = str.split("")
	flat = 0
	curved = 0

	idx = 0
	until idx >= arr.size
		if arr[idx].match(/\(/)
			curved += 1 
		elsif arr[idx].match(/\)/)
			curved -= 1 
			break if curved == -1
		end
		idx += 1
	end
	curved == 0 ? 1 : 0
			
end
