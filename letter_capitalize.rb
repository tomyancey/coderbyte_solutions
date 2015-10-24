=begin
Have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word. Words will be separated by only one space. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
=end

def letter_capitalize(str)

    arr = str.split(/ /)
    
    arr.map! do |x|
        x = x.split(//) ; x[0].upcase! 
        x.join
    end
    arr.join(" ")    
     
end