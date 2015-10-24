#Have the function LetterCountI(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces. 

def letter_count(str)

  letters = str.downcase.scan(/[a-z]/).to_a.uniq 
  words = str.downcase.split(/ /)
  count = 1
  win = ""
  
  words.each do |word|
    letters.each do |letter|
      if word.count(letter) > count
        count = word.count(letter)
        win = word
      end
    end
  end
  
  count > 1 ? win : -1 
         
end