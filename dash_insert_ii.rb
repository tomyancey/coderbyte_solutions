#Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('*') between each two even numbers in str. For example: if str is 4546793 the output should be 454*67-9-3. Don't count zero as an odd or even number. 

def odd?(num)
	return false if num == 0
	num % 2 != 0
end

def even?(num)
	return false if num == 0
	num % 2 == 0
end	

def dash_insert(num)
	arr = num.to_s.split("").map {|x| x.to_i }
	idx = 0
	until idx >= arr.size - 1
		if odd?(arr[idx]) && odd?(arr[idx + 1])
			arr.insert(idx + 1,"-")
			idx += 1
		elsif even?(arr[idx]) && even?(arr[idx + 1])
			arr.insert(idx + 1,"*")
			idx += 1
		end
		idx += 1
		p arr[idx]
	end
	arr.join
end