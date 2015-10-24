=begin
Have the function WordCount(str) take the str string parameter being passed and return the number of words the string contains (ie. "Never eat shredded wheat" would return 4). Words will be separated by single spaces. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
=end

def word_count(str)

    str.split(" ").size
    
end