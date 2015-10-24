#Using the Ruby language, have the function DivisionStringified(num1,num2) take both parameters being passed, divide num1 by num2, and return the result as a string with properly formatted commas. If an answer is only 3 digits long, return the number with no commas (ie. 2 / 3 should output "1"). For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345". 

def division_stringified(num1,num2)
	num = (num1 / num2.to_f).round
	num_str = num.to_s.split("")
	insert_val = 4
	until insert_val > num_str.size
		num_str.insert(-insert_val,",")
		insert_val += 4
	end	
	num_str.join("")
end

p division_stringified(45,50)


