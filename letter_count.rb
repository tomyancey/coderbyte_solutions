#Have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces. 
def letter_count(str)
  
  greatest_val = 1
  greatest = ""
  words = str.split(" ")
  letters = ("a".."z").to_a
  
  words.each do |word|
    letters.each do |letter|
      if word.downcase.count(letter) > greatest_val
        greatest_val = word.count(letter)
        greatest = word
      end
    end
  end
  
  return greatest if greatest_val > 1
  -1
         
end