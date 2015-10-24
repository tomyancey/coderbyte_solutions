#Using the Ruby language, have the function StringScramble(str1,str2) take both parameters being passed and return the string true if a portion of str1 characters can be rearranged to match str2, otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should return true. Punctuation and symbols will not be entered with the parameters. 

def string_scramble(str1,str2)
	
	arr2 = str2.downcase.split("").uniq
	arr2.each {|x| return false if str2.count(x) > str1.count(x) }
	true
  
end

puts string_scramble("aqwe","qa")