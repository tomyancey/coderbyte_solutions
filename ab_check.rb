=begin
Have the function ABCheck(str) take the str parameter being passed and return the string true if the characters a and b are separated by exactly 3 places anywhere in the string at least once (ie. "lane borrowed" would result in true because there is exactly three characters between a and b). Otherwise return the string false. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
=end

def ab_check(str)

  arr = str.split(//)
  idx = 0
  while arr.size - 1 > idx
    return "true" if arr[idx] == 'a' && arr[idx + 4] == 'b'
    return "true" if arr[idx] == 'b' && arr[idx + 4] == 'a' 
    idx += 1
  end
  "false"
         
end
   