#Have the function MeanMode(arr) take the array of numbers stored in arr and return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). The array will not be empty, will only contain positive integers, and will not contain more than one mode. 

def mean_mode(arr)
  
  modecount, mode = 1, 0
  
  arr.each {|x| mode, modecount = x, arr.count(x) if arr.count(x) > mode }
  
  mean = arr.reduce(:+).to_f / arr.size.to_f
  mean == mode ? 1 : 0    
  
end