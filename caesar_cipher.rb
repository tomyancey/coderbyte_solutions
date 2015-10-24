#Have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher shift on it using the num parameter as the shifting number. A Caesar Cipher works by shifting each letter in the string N places down in the alphabet (in this case N will be num). Punctuation, spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt". 
def caesar_cipher(str,num)

  str_arr = str.split("")
  up_letters = ("A".."Z").to_a
  down_letters = ("a".."z").to_a
  
  str_arr.map! do |x|
    if up_letters.include?(x)
      idx = (up_letters.index(x) + num) % 26
      up_letters[idx]
    elsif down_letters.include?(x)
      idx = (down_letters.index(x) + num) % 26
      down_letters[idx]
    else
      x
    end
  end

  str_arr.join("")
     
end

