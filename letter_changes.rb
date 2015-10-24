=begin
Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
=end

def letter_changes(str)

    arr = str.downcase.split(//)
    new = []
    vowels = %w[a e i o u]
    
    arr.each do |x|
        if x.match(/[a-y]/)
            new << x.next
        elsif x.match(/z/)
            new << 'a'
        else
            new << x
        end
    end
    new.map! { |x| vowels.include?(x) ? x.upcase : x } 
    new.join
         
end